pragma solidity >=0.7.0 <0.9.0;

contract VerificaIdade {
    uint public idade;

    function definirIdade(uint novaIdade) public {
        idade = novaIdade;
    }

    function maiorDeIdade() public view returns (bool) {
        return idade >= 18;
    }
}
