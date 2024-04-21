import { assert, expect, test } from "vitest";
import axios, { AxiosError, AxiosRequestConfig, RawAxiosRequestHeaders } from "axios";

async function getToken() {
    const client = axios.create({
        baseURL: "http://localhost:3000"
    });
    const config : AxiosRequestConfig = {
        headers:{
            'Accept': 'application/json',
        } as RawAxiosRequestHeaders
    }
    const data = {
        email: "manager@example.com",
        password: 'Admin123'
    }
    let token
    await client.post('/auth/login', data, config).
    then(response => {
        expect(response.status).toBe(201)
        token = response.data.token
    }).
    catch((error) => {
        console.log("something went wrong: " + error)
    });
    return token
}

test('me - valid', async() => {
    const client = axios.create({
        baseURL: "http://localhost:3000"
    });
    let token = await getToken()
    expect(token).toBeDefined()
    const config : AxiosRequestConfig = {
        headers:{
            'Accept': 'application/json',
            'Authorization': 'Bearer ' + token
        } as RawAxiosRequestHeaders
    }
    await client.get('/users/me',config).
    then(response => {
        expect(response.status).toBe(200)
        expect(response.data).toBeDefined()
        //console.log(response.data)
        expect(response.data.email).toBeDefined()
        expect(response.data.name).toBeDefined()
        expect(response.data.role).toBeDefined()
    }).
    catch ((error) => {
        assert.fail('something wrong: ' + error)
    })
})

test('me - invalid token', async() => {
    const client = axios.create({
        baseURL: "http://localhost:3000"
    });
    let token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOjEsInVzZXJuYW1lIjoibWFuYWdlckBleGFtcGxlLmNvbSIsImlhdCI6MTcxMTU2OTc0MiwiZXhwIjoxNzExNTc2OTQyfQ.HwPVLL8c507ysUB9vxM9hbBuAWicEcYO3oxoXJtXs1I"
    const config : AxiosRequestConfig = {
        headers:{
            'Accept': 'application/json',
            'Authorization': 'Bearer ' + token
        } as RawAxiosRequestHeaders
    }
    await client.get('/users/me',config).
    then(response => {
        expect(response.status).toBe(200)
        expect(response.data).toBeDefined()
        console.log(response.data)
    }).
    catch ((error : AxiosError) => {
        //console.log(error)
        expect(error.response?.status).toBe(401)
    })
})

test('me - no token', async() => {
    const client = axios.create({
        baseURL: "http://localhost:3000"
    });
    const config : AxiosRequestConfig = {
        headers:{
            'Accept': 'application/json'
        } as RawAxiosRequestHeaders
    }
    await client.get('/users/me',config).
    then(response => {
        expect(response.status).toBe(200)
        expect(response.data).toBeDefined()
        console.log(response.data)
    }).
    catch ((error : AxiosError) => {
        expect(error.response?.status).toBe(401)
    })
})