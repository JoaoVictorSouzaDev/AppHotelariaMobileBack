import {Router} from 'express';
import loginController from '../controllers/UserController';

const routeLogin = Router();

routeLogin.post("/", loginController.login)

export default routeLogin;