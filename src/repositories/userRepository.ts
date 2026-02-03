import {pool} from "../database/database";

async function login(email:string) {
    const sql = `
        SELECT 
            usuarios.id,
            usuarios.nome,
            usuarios.email,
            usuarios.senha,
            funcoes.nome
        AS 
            cargo
        FROM
            usuarios
        JOIN 
            funcoes
        ON 
            usuarios.fk_funcoes = funcoes.id
        WHERE
            usuarios.email = ?
    `;

    const [rows] = await pool.query(sql, [email])
    return rows.length ? rows[0]  : null
}

export default {
    login
}