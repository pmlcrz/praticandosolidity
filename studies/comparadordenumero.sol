pragma solidity >=0.7.0 <0.9.0;

contract Comparador {
    uint public num1;
    uint public num2;

    function definirNumeros(uint numero1, uint numero2) public {
        num1 = numero1;
        num2 = numero2;
    }

    function maiorNumero() public view returns (uint) {
        if (num1 > num2) {
            return num1;
        } else {
            return num2;
        }
    }
}
