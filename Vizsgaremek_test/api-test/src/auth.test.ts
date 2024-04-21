import { assert, expect, test } from "vitest";
import axios, { AxiosError, AxiosRequestConfig, AxiosResponse, RawAxiosRequestHeaders } from "axios";
import {jwtDecode} from "jwt-decode";

test('Sucessful login', async() => {
    const client = axios.create({
        baseURL: "http://localhost:3000"
    });
    const config : AxiosRequestConfig = {
        headers:{
            'Accept': 'application/json'
        } as RawAxiosRequestHeaders
    }
    const data = {
        email: "manager@example.com",
        password: 'Admin123'
    }
    const response: AxiosResponse = await client.post('/auth/login', data, config)
    expect(response).toBeDefined()
    expect(response.status).toBe(201)
    expect(response.data).toBeDefined()
    expect(response.data.token).toBeDefined()
    const decoded = jwtDecode(response.data.token)
    //console.log(decoded);
    // TODO: check token subject
    //expect(decoded.sub).toBe(data.email)
    var now = new Date().getTime()/1000;
    expect(decoded.exp).toBeGreaterThan(now)
})

test('Failed login - invalid password', async() => {
    const client = axios.create({
        baseURL: "http://localhost:3000"
    });
    const config : AxiosRequestConfig = {
        headers:{
            'Accept': 'application/json'
        } as RawAxiosRequestHeaders
    }
    const data = {
        email: "manager@example.com",
        password: 'Password-Wrong'
    }
    await client.post('/auth/login', data, config).
    then(response => {
        expect(response.status).toBe(401)
    }).
    catch((error : AxiosError) => {
        expect(error.response?.status).toBe(401)
    });
})

test('Failed login - invalid email', async() => {
    const client = axios.create({
        baseURL: "http://localhost:3000"
    });
    const config : AxiosRequestConfig = {
        headers:{
            'Accept': 'application/json'
        } as RawAxiosRequestHeaders
    }
    const data = {
        email: "nouser@example.com",
        password: 'Password-Wrong'
    }
    await client.post('/auth/login', data, config).
    then(response => {
        expect(response.status).toBe(401)
    }).
    catch((error : AxiosError) => {
        expect(error.response?.status).toBe(401)
    });
})