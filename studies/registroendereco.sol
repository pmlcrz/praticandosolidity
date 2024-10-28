pragma solidity >=0.7.0 <0.9.0;

contract RegistroEnderecos {
    address[] public enderecos;

    function registrarEndereco(address novoEndereco) public {
        enderecos.push(novoEndereco);
    }

    function verEnderecos() public view returns (address[] memory) {
        return enderecos;
    }
}
