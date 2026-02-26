import { Request, Response, NextFunction } from "express";
import { validatePassword } from "../utils/password";
import clientRepository from "../repositories/clientRepository";
import { createJWT } from "../utils/jwt";
import { generatePassword } from "../utils/password";

async function login(req:Request, res:Response, next:NextFunction) {
  let {email, senha} = req.body;

  if(!email || !senha) {return res.status(400).json({erro:"Dados invalidos"})}

  if(email.trim() === "" || senha.trim() === "") {return res.status(400).json({erro:"Campos não podem ser vazios"})} 

  try {

    const result = await clientRepository.login(email)

    if (!result) {throw new Error();}

    const resultPassword = await validatePassword(senha, result.senha);
    if (!resultPassword) {throw new Error("Senha invalidada");} 

    const {senha:_senha, ...usuario} = result;

    const token = createJWT(usuario)

    return res.status(201).json(token)

  }
  catch(error) {
    return res.status(404).json({erro:"Dados invalidos"})
  }
}

async function createClient(req: Request, res: Response, next: NextFunction) {
  const { nome, email, senha, cpf, telefone } = req.body;

  if (!nome || !email || !senha || !cpf || !telefone) {
    return res.status(400).json({ erro: "Todos os campos são obrigatórios" });
  }

  if (nome.trim() === "" || email.trim() === "" || senha.trim() === "" || cpf.trim() === "" || telefone.trim() === "") {
    return res.status(400).json({ erro: "Campos não podem ser vazios" });
  }


  try {
    const hash = await generatePassword(senha);
    const result = await clientRepository.createClient(nome, email, hash, cpf, telefone);

    if (!result) {
      return res.status(400).json({ erro: "Não foi possível criar o cliente" });
    }

    const { senha: _senha, ...usuario } = result;
    const token = createJWT(usuario);

    return res.status(201).json(token); 
  } catch (error) {
    console.error(error);
    return res.status(500).json({ erro: "Erro interno no servidor" });
  } 
}


async function updateClient(req: Request, res: Response, next: NextFunction) {
  const { id } = req.params;
  const data = req.body;

  if (Object.keys(data).length === 0) {
    return res.status(400).json({ erro: "Nenhum dado fornecido para atualização" });
  }

  try {
    const result = await clientRepository.updateClient(parseInt(id), data);

    console.log(result)

    if (result.affectedRows === 0 ) {
      return res.status(404).json({ erro: "Cliente não encontrado" });
    }

    return res.status(200).json({ 
      mensagem: "Cliente atualizado com sucesso",
      dadosAtualizados: data 
    });

  } catch (error) {
    console.error(error);
    return res.status(500).json({ erro: "Erro interno no servidor" });
  }
}

export default {
  login, createClient, updateClient
}