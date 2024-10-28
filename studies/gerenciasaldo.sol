pragma solidity >=0.7.0 <0.9.0;

contract GerenciamentoSaldo {
    uint public saldo;

    function depositar(uint valor) public {
        saldo += valor;
    }

    function sacar(uint valor) public {
        require(valor <= saldo, "Saldo insuficiente");
        saldo -= valor;
    }

    function verSaldo() public view returns (uint) {
        return saldo;
    }
}
