import { RowDataPacket } from "mysql2";

export type Client = RowDataPacket & {
    id: number;
    email: string;
    senha: string;
    cargo: string;
    nome: string;
}
