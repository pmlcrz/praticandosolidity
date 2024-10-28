pragma solidity >=0.7.0 <0.9.0;

contract Votacao {
    mapping(string => uint) public votos;

    function votar(string memory candidato) public {
        votos[candidato] += 1;
    }

    function verVotos(string memory candidato) public view returns (uint) {
        return votos[candidato];
    }
}
