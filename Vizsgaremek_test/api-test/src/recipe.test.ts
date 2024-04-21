import axios, { AxiosError, AxiosRequestConfig, RawAxiosRequestHeaders } from "axios";
import { assert, expect, test } from "vitest";

const client = axios.create({
    baseURL: "http://localhost:3000"
});

const config : AxiosRequestConfig = {
    headers:{
        'Accept': 'application/json',
    } as RawAxiosRequestHeaders
}

test('all', async() => {
    await client.get('/recipes/all', config)
    .then(respones => {
        expect(respones.status).toBe(200)
        expect(respones.data).toBeDefined()
        expect(respones.data.id).toBeDefined()
        expect(respones.data.id).toBeGreaterThanOrEqual(1)
        expect(respones.data.preptime).toBeDefined()
        expect(respones.data.preptime).toBeGreaterThanOrEqual(1)
        expect(respones.data.user_id).toBeDefined()
        expect(respones.data.user_id).toBeGreaterThanOrEqual(1)
        expect(respones.data.title).toBeDefined()
        expect(respones.data.description).toBeDefined()
        expect(respones.data.content).toBeDefined()
        expect(respones.data.posted).toBeDefined()
        expect(respones.data.username).toBeDefined()
        console.log("all - test: " + respones.data.title)
    })
    .catch((error : AxiosError) => {
        expect(error.status).toBeGreaterThan(400)
    })
})