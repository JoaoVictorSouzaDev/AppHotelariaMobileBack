import { QueryResult, RowDataPacket } from "mysql2";
 
export type Room = RowDataPacket & {
    id: number,
    nome: string,
    numero: number,
    qtd_cama_casal: number,
    qtd_cama_solteiro: number,
    preco: number,
    disponivel: boolean;
    fotos?: string[];
}
 
 