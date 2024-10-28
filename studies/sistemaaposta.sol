pragma solidity >=0.7.0 <0.9.0;

contract SistemaApostas {
    mapping(address => uint) public apostas;
    uint public totalApostado;

    function fazerAposta(uint valor) public {
        require(valor > 0, "Aposta deve ser maior que zero");
        apostas[msg.sender] += valor;
        totalApostado += valor;
    }

    function verAposta(address jogador) public view returns (uint) {
        return apostas[jogador];
    }
}
