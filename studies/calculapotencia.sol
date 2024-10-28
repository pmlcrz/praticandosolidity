pragma solidity >=0.7.0 <0.9.0;

contract CalculadoraPotencia {
    function potencia(uint base, uint expoente) public pure returns (uint) {
        uint resultado = 1;
        for (uint i = 0; i < expoente; i++) {
            resultado *= base;
        }
        return resultado;
    }
}
