pragma solidity >=0.7.0 <0.9.0;

contract ConversorTemperatura {
    function celsiusParaFahrenheit(uint celsius) public pure returns (uint) {
        return (celsius * 9 / 5) + 32;
    }
}
