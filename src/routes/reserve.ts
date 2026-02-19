import {Router} from "express";
import reserveController from "../controllers/reserveController";

const routeReserves = Router();

routeReserves.post("/", reserveController.createRequest);

export default routeReserves;