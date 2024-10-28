pragma solidity >=0.7.0 <0.9.0;

contract Contador {
    uint public contador;

    function incrementar() public {
        contador += 1;
    }

    function verContador() public view returns (uint) {
        return contador;
    }
}
