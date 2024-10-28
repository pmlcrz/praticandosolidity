pragma solidity >=0.7.0 <0.9.0;

contract SistemaAutenticacao {
    struct Usuario {
        string nomeUsuario;
        string senha;
    }

    mapping(string => Usuario) public usuarios;

    function registrarUsuario(string memory nomeUsuario, string memory senha) public {
        usuarios[nomeUsuario] = Usuario(nomeUsuario, senha);
    }

    function autenticar(string memory nomeUsuario, string memory senha) public view returns (bool) {
        Usuario memory usuario = usuarios[nomeUsuario];
        return keccak256(abi.encodePacked(usuario.senha)) == keccak256(abi.encodePacked(senha));
    }
}
