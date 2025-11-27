import { Request, Response, NextFunction } from "express";
import taskRepository from "../repositories/taskRepository";
import Task from "../models/taskModel";

async function getAllTask(req:Request, res:Response, next:NextFunction) {
  const result = await taskRepository.getAllTasks()
  res.json(result);
}

async function getTask(req:Request, res:Response, next:NextFunction) {
  const {id} = req.params
  let result = await taskRepository.getTask(parseInt(id))
  const status = result ? 200 : 404
  result = result ? result : ['Tarefa não localizada']
  res.status(status).json(result)
}

async function createTask(req:Request, res:Response, next:NextFunction) {
  const taks = req.body as Task
  try {
    const result = await taskRepository.createTask(taks)
    return res.status(201).json(result)
  } 
  catch(error) {
    console.log("Erro ao criar", error)
    return res.status(400).json({erro:"Dados invalidos"})
  }
}

function updateTask(req:Request, res:Response, next:NextFunction) {
  res.send("Atualizar uma tarefa");
}

function deleteTask(req:Request, res:Response, next:NextFunction) {
  res.send("Deletar uma tarefa");
}

export default {
  getAllTask, getTask, createTask, updateTask, deleteTask
}
