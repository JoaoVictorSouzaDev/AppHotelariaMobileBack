export default class User {
    id: number;
    email: string;
    senha: string;

    private static nextId = 1;

    constructor(email:string, senha:string) {
        this.id = User.nextId++;
        this.email = email;
        this.senha = senha;
    }
}