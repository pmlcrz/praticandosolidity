pragma solidity >=0.7.0 <0.9.0;

contract ListaNomes {
    string[] public nomes;

    function adicionarNome(string memory nome) public {
        nomes.push(nome);
    }

    function verNomes() public view returns (string[] memory) {
        return nomes;
    }
}
