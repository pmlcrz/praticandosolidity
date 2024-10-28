pragma solidity >=0.7.0 <0.9.0;

contract ArmazenamentoNumero {
    uint public numero;

    function alterarNumero(uint novoNumero) public {
        numero = novoNumero;
    }

    function verNumero() public view returns (uint) {
        return numero;
    }
}
