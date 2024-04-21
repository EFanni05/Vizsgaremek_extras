import axios, { AxiosError, AxiosRequestConfig, RawAxiosRequestHeaders } from "axios"
import { expect, test } from "vitest"

test('search - text_only', async () => {
    const client = axios.create({
        baseURL: "http://localhost:3000"
    });
    const config : AxiosRequestConfig = {
        headers:{
            'Accept': 'application/json',
        } as RawAxiosRequestHeaders
    }
    const data = {
        "searchText" : "a",
        "selectedAllergens": []
    }
    await client.post('/recipes/searchContent', data, config).
    then(response => {
        expect(response.status).toBe(200)
        console.log("******" + JSON.stringify(response.data))
        expect(response.data.id).toBeDefined()
        expect(response.data.title).toBeDefined()
        expect(response.data.description).toBeDefined()
        expect(response.data.preptime).toBeDefined()
        expect(response.data.preptime).toBeGreaterThan(0)
        expect(response.data.posted).toBeDefined()
        expect(response.data.user_id).toBeDefined()
        expect(response.data.user_id).toBe(1)
        expect(response.data.rating).toBeDefined()
    }).
    catch((error : AxiosError) => {
        expect(error.response?.status).toBeGreaterThanOrEqual(400)
    })
})

test('search - text + allergen', async () => {
    const client = axios.create({
        baseURL: "http://localhost:3000"
    });
    const config : AxiosRequestConfig = {
        headers:{
            'Accept': 'application/json',
        } as RawAxiosRequestHeaders
    }
    const data = {
        "searchText" : "a",
        "selectedAllergens": [1]
    }
    await client.post('/recipes/searchContent', data, config).
    then(response => {
        expect(response.status).toBe(200)
        console.log("******" + JSON.stringify(response.data))
        expect(response.data.id).toBeDefined()
        expect(response.data.title).toBeDefined()
        expect(response.data.description).toBeDefined()
        expect(response.data.preptime).toBeDefined()
        expect(response.data.preptime).toBeGreaterThan(0)
        expect(response.data.posted).toBeDefined()
        expect(response.data.user_id).toBeDefined()
        expect(response.data.user_id).toBe(1)
        expect(response.data.rating).toBeDefined()
    }).
    catch((error : AxiosError) => {
        expect(error.response?.status).toBe(200)
    })
})

test('search - text + allergenArray', async () => {
    const client = axios.create({
        baseURL: "http://localhost:3000"
    });
    const config : AxiosRequestConfig = {
        headers:{
            'Accept': 'application/json',
        } as RawAxiosRequestHeaders
    }
    const data = {
        "searchText" : "a",
        "selectedAllergens": [1,2,4]
    }
    await client.post('/recipes/searchContent', data, config).
    then(response => {
        expect(response.status).toBe(200)
        console.log("******" + JSON.stringify(response.data))
        expect(response.data.id).toBeDefined()
        expect(response.data.title).toBeDefined()
        expect(response.data.description).toBeDefined()
        expect(response.data.preptime).toBeDefined()
        expect(response.data.preptime).toBeGreaterThan(0)
        expect(response.data.posted).toBeDefined()
        expect(response.data.user_id).toBeDefined()
        expect(response.data.user_id).toBe(1)
        expect(response.data.rating).toBeDefined()
    }).
    catch((error : AxiosError) => {
        expect(error.response?.status).toBe(200)
    })
})

test('search - no text but with an array', async() =>{
    const client = axios.create({
        baseURL: "http://localhost:3000"
    });
    const config : AxiosRequestConfig = {
        headers:{
            'Accept': 'application/json',
        } as RawAxiosRequestHeaders
    }
    const data = {
        "searchText" : "",
        "selectedAllergens": [1, 3, 4]
    }
    await client.post('/recipes/searchContent', data, config).
    then(response => {
        expect(response.status).toBe(400)
    }).
    catch((error : AxiosError) => {
        expect(error.response?.status).toBeGreaterThan(400)
    })
})

test('search - no text no array', async() => {
    const client = axios.create({
        baseURL: "http://localhost:3000"
    });
    const config : AxiosRequestConfig = {
        headers:{
            'Accept': 'application/json',
        } as RawAxiosRequestHeaders
    }
    const data = {
        "searchText" : "",
        "selectedAllergens": []
    }
    await client.post('/recipes/searchContent', data, config).
    then(response => {
        expect(response.status).toBe(400)
    }).
    catch((error : AxiosError) => {
        expect(error.response?.status).toBeGreaterThan(400)
    })
})