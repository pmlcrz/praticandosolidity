pragma solidity >=0.7.0 <0.9.0;

contract RegistroPessoa {
    struct Pessoa {
        string nome;
        uint idade;
    }

    Pessoa public pessoa;

    function definirPessoa(string memory nome, uint idade) public {
        pessoa = Pessoa(nome, idade);
    }

    function verPessoa() public view returns (string memory, uint) {
        return (pessoa.nome, pessoa.idade);
    }
}
