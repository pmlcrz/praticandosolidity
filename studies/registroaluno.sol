pragma solidity >=0.7.0 <0.9.0;

contract RegistroAlunos {
    struct Aluno {
        string nome;
        uint nota;
    }

    Aluno[] public alunos;

    function registrarAluno(string memory nome, uint nota) public {
        alunos.push(Aluno(nome, nota));
    }

    function verAluno(uint indice) public view returns (string memory, uint) {
        require(indice < alunos.length, "Indice fora de alcance");
        Aluno storage aluno = alunos[indice];
        return (aluno.nome, aluno.nota);
    }
}
