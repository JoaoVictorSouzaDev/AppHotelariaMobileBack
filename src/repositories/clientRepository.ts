import {pool} from "../database/database";
import {Client} from "../models/clientModel";

async function login(email:string) {
    const sql = `
        SELECT 
            clientes.id,
            clientes.nome,
            clientes.email,
            clientes.senha,
            funcoes.nome
        AS 
            cargo
        FROM
            clientes
        JOIN 
            funcoes
        ON 
            clientes.fk_funcoes = cargo.id
        WHERE
            clientes.email = ?
    `;

    const [rows] = await pool.query<Client[]>(sql, [email])
    return rows.length ? rows[0]  : null
}

async function createClient(nome: string, email: string, senha: string, cpf: string, telefone: string,) {
    const sql = `
        INSERT INTO 
            clientes (nome, email, senha, telefone, cpf) 
        VALUES 
            (?, ?, ?, ?, ?)
    `;

    const [result] = await pool.query(sql, [nome, email, senha]);

    return {
        id: (result as any).insertId,
        nome,
        email,
        senha,
        telefone,
        cpf
    };
}

export default {
    login, createClient
}