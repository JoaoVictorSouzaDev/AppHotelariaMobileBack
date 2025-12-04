import  jwt from "jsonwebtoken";

const JWT_SERCRET = "senha123"
const DURATION = 60 * 60 * 24

export function createJWT() {
    const payload = {
        id: 123,
        nome: "teste",
        cargo: "cliente"
    }

    return jwt.sign(payload, JWT_SERCRET, {
        expiresIn: DURATION,
        algorithm: "HS256"
    })
}


