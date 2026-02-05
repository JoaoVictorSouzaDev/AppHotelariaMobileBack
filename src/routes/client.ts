import {Router} from 'express';
import clientController from '../controllers/clientController';

const routeClient = Router();

routeClient.post("/login", clientController.login)
routeClient.post("/", clientController.createClient)

export default routeClient;