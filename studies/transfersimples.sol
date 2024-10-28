pragma solidity >=0.7.0 <0.9.0;

contract Transferencia {
    mapping(address => uint) public saldos;

    function depositar() public payable {
        saldos[msg.sender] += msg.value;
    }

    function transferir(address destinatario, uint valor) public {
        require(saldos[msg.sender] >= valor, "Saldo insuficiente");
        saldos[msg.sender] -= valor;
        saldos[destinatario] += valor;
    }

    function verSaldo(address conta) public view returns (uint) {
        return saldos[conta];
    }
}
