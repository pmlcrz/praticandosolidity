pragma solidity >=0.7.0 <0.9.0;

contract ControleProprietario {
    address public proprietario;

    constructor() {
        proprietario = msg.sender;
    }

    modifier somenteProprietario() {
        require(msg.sender == proprietario, "Acesso negado");
        _;
    }

    function alterarProprietario(address novoProprietario) public somenteProprietario {
        proprietario = novoProprietario;
    }
}
