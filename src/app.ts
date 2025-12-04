import express from "express";
import handleRouter from "./routes/router";

const app = express();
app.use(express.json());
app.use(handleRouter);

export default app; 