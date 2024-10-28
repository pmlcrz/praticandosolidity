pragma solidity >=0.7.0 <0.9.0;

contract CalculadoraMedia {
    uint[] public numeros;

    function adicionarNumero(uint numero) public {
        numeros.push(numero);
    }

    function calcularMedia() public view returns (uint) {
        uint soma = 0;
        for (uint i = 0; i < numeros.length; i++) {
            soma += numeros[i];
        }
        return numeros.length > 0 ? soma / numeros.length : 0;
    }
}
