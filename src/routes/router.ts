import { Router } from "express";
import routeTask from "./task";
import { createJWT } from "../utils/jwt";

const handleRouter = Router();

handleRouter.use("/task", routeTask);
handleRouter.use("/jwt", (req, res) => {
    res.json(createJWT())
})
 
export default handleRouter; 

