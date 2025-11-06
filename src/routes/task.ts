import { Router } from "express";

const router = Router();

router.get("/", () => {console.log('Pegar todas as tarefas')})
router.get("/:id", () => {console.log('Pegar uma tarefa')})
router.post("/", () => {console.log('cadastrar uma tarefa')})
router.put("/:id", () => {console.log('atualizar uma tarefa')})
router.delete("/:id", () => {console.log('deletar uma tarefa')})

export default router;
