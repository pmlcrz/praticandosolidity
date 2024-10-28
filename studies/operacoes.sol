pragma solidity >=0.7.0 <0.9.0;

contract Operacoes {
    uint public num1;
    uint public num2;

    function definirNumeros(uint numero1, uint numero2) public {
        num1 = numero1;
        num2 = numero2;
    }

    function somar() public view returns (uint) {
        return num1 + num2;
    }

    function subtrair() public view returns (uint) {
        return num1 - num2;
    }

    function multiplicar() public view returns (uint) {
        return num1 * num2;
    }

    function dividir() public view returns (uint) {
        require(num2 != 0, "Divisao por zero nao permitida");
        return num1 / num2;
    }
}
