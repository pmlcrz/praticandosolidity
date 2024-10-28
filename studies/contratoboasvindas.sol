pragma solidity >=0.7.0 <0.9.0;

contract BoasVindas {
    string public mensagem;

    constructor() {
        mensagem = "Bem-vindo ao contrato!";
    }

    function alterarMensagem(string memory novaMensagem) public {
        mensagem = novaMensagem;
    }

    function verMensagem() public view returns (string memory) {
        return mensagem;
    }
}
