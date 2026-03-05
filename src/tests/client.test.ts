const URL_LOGIN:string = "https://app-hotelaria-mobile-back-six.vercel.app/api/client/login"

let newLogin = {
    email: "Uira@gmail.com",
    senha: "senha123",
}

let newClient = {
    nome: "Nome100%atualizado54324",
    email: "Uira3000234@gmail.com",
    telefone: "telefone102340%atualizado5",
}

let clientId:number = 5


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
        const res = await fetch("https://app-hotelaria-mobile-back-six.vercel.app/api/client", {
        method: "POST",
        headers:{"Content-Type": "application/json"},
        body: JSON.stringify(newClient)
    })
    expect(res.status).toBe(201)
    const json = await res.json()
    console.log("Token de cadastro: ")
    console.log(json)
})

test("POST: api/client/id = 201", async () => {
        const res = await fetch(`https://app-hotelaria-mobile-back-six.vercel.app/api/client/${clientId}`, {
        method: "PUT",
        headers:{"Content-Type": "application/json"},
        body: JSON.stringify(newClient)
    })
    expect(res.status).toBe(200)
})