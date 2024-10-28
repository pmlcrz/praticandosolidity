pragma solidity >=0.7.0 <0.9.0;

contract VerificarParImpar {
    function ehPar(uint numero) public pure returns (bool) {
        return numero % 2 == 0;
    }
}
