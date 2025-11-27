import { rejects } from "assert";
import Task from "../models/taskModel"; 

const taskList:Task[] = []

async function getAllTasks() : Promise<Task[] | any> {
    return new Promise((resolve, reject) => {
        return resolve(taskList)
    })
}

async function getTask(id:Number):Promise<Task|any> {
    return new Promise((resolve, reject) => {
        const task = taskList.find(t => t.id === id)
        return resolve(task)
    })
}

async function createTask(data:Task):Promise<Task> {
    return new Promise((resolve, reject) => {
        if (!data.name || !data.description){return reject(new Error("Dados invalidos"))}
        const newTask = new Task(data.name, data.description)
        taskList.push(newTask)
        return resolve(newTask)
    })
}

export default {
    getAllTasks, getTask, createTask
}

