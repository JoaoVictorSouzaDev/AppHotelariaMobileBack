const URL_LOGIN:string = "http://localhost:3000/api/client/login"

let newLogin = {
    email: "Uira@gmail.com",
    senha: "senha123",
}

let newClient = {
    nome: "Uira",
    email: "Uira2@gmail.com",
    senha: "senha123",
    cpf: "12345678900",
    telefone: "11987654321"
}


test("POST: api/login = 201", async () => {
    const res = await fetch(URL_LOGIN, {
        method: "POST",
        headers:{"Content-Type": "application/json"},
        body: JSON.stringify(newLogin)
    })
    expect(res.status).toBe(201) 
    const json = await res.json()
    console.log(json)
}) 

test("POST: api/client = 201", async () => {
        const res = await fetch("http://localhost:3000/api/client", {
        method: "POST",
        headers:{"Content-Type": "application/json"},
        body: JSON.stringify(newClient)
    })
    expect(res.status).toBe(201) 
    const json = await res.json()
    console.log(json)
})