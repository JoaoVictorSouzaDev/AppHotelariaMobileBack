import { Request, Response, NextFunction } from "express";
import bcrypt from "bcrypt";
import userRepository from "../repositories/userRepository";

async function login(req:Request, res:Response, next:NextFunction) {
  const{email, senha} = req.body;
  if(!email || !senha) {return res.status(400).json({erro:"Dados invalidos"})}
  if(email.trim() === "" || senha.trim() === "") {return res.status(400).json({erro:"Campos não podem ser vazios"})} 

  try {
    const result = await userRepository.login(email)
    if (!result) {throw new Error();}    

    bcrypt.compare(req.body.senha, result.senha, (err: Error | undefined, same: boolean) => {
      if (err) {
        console.log("Erro ao comparar senhas", err);
        return res.status(500).json({ erro: "Erro interno do servidor" });
      } 
      if (same) {
        console.log(result);
        return res.sendStatus(201)
      } else {
        return res.status(401).json({ erro: "Senha incorreta" });
      }
    }); 
    // return console.log(result);
  }
  catch(error) {  
    console.log("Erro ao realizar login", error)
    return res.status(400).json({erro:"Dados invalidos"})
  }
}

export default {
  login
}