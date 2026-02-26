import { Request, Response, NextFunction } from "express";
import reserveRepository from "../repositories/reserveRepository";
import {corrigirDataHora} from "../utils/dataHora";

async function createRequest(req: Request, res: Response, next: NextFunction) {
    const token = (req as any).payload;
    const {pagamento, adicionais, quartos} = req.body

    if (!token.id || !pagamento || !quartos || !adicionais) {
        return res.status(400).json({ message: "Missing required fields" });
    }

    try {

        const RequestData = {
            fk_clientes: token.id,
            pagamento: pagamento
        }

        const pedidoId = await reserveRepository.createRequests(RequestData);
        if (!pedidoId) { throw new Error("Erro ao criar pedido");}

        let result = []

        for (let q of quartos) {
            q.inicio = await corrigirDataHora(q.inicio, 14);
            q.fim = await corrigirDataHora(q.fim, 12);
            const reserveId = await reserveRepository.createReserve(pedidoId, q, adicionais);
            if (!reserveId) {continue}

            result.push({
                ...q,
                reserveId: reserveId,
            });
        }

        console.log(result);

        res.status(201).json({
            message: "Pedido criado com sucesso",
            pedidoId: pedidoId 
        });

    } catch (error) {
        console.error("Error creating reservation:", error);
        return res.status(500).json({ message: "Internal server error" });
    }
}

export default {
    createRequest
}