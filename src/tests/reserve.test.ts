
let Login = {
    email: "Uira@gmail.com",
    senha: "senha123",
}

test("POST: /api/reserve = 201", async () => {

    //Login
    const res = await fetch("https://app-hotelaria-mobile-back-six.vercel.app/api/client/login", {
        method: "POST",
        headers:{"Content-Type": "application/json"},
        body: JSON.stringify(Login)
    })
    expect(res.status).toBe(201) 
    const token = await res.json()

    //Reserva
    const resp = await fetch("https://app-hotelaria-mobile-back-six.vercel.app/api/reserve", {
        method: "POST",
        headers: { 
            "Content-Type": "application/json",
            "Authorization": "Bearer "+ token  
        },
        body: JSON.stringify({
            pagamento: "Pix",
            adicionais: 1,
            quartos: [
                {
                    id: 30,
                    inicio: "2024-07-01",
                    fim: "2024-07-10",
                },
                {
                    id: 29,
                    inicio: "2024-07-01",
                    fim: "2024-07-10",
                }
            ]
        })
    });

    expect(resp.status).toBe(201);
    const json = await resp.json();
    console.log(json);
});