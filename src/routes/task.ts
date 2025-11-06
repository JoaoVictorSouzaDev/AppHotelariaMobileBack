import { Router } from "express";

const routeTask = Router();

routeTask.get("/", () => {console.log('Pegar todas as tarefas')})
routeTask.get("/:id", () => {console.log('Pegar uma tarefa')})
routeTask.post("/", () => {console.log('cadastrar uma tarefa')})
routeTask.put("/:id", () => {console.log('atualizar uma tarefa')})
routeTask.delete("/:id", () => {console.log('deletar uma tarefa')})

export default router;
