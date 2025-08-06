// Liciencia 
// SPDX-License-Identifier: GPL-3.0-or-later

// Version solidity

pragma solidity 0.8.24;

// Contrato

contract PayableContract{

    // palabra (function) + nombre + argumentos + visibilidad + payable? + modificadores + valores devueltos
    // 1 ether = 1*e18 wei

    // La palabra payable solo hay que utilizarla cuando se va a recibir dinero.
    // Cualquier contrato que tenga una función que contenga payable. Tiene que tener otra funcion para 
    // poder extraer ether, si no , se consideraría una vulnerabilidad crítica.
    // Ya que en caso de recibir dinero, no se podría extraer nunca, y se perdería el dinero.

    function sendEther() public payable {

    }

    function WithdrawEther(uint256 amount) public {

        (bool success,)= msg.sender.call{value: amount}("");
        require(success,"La transferencia ha fallado"); // Añadimos require para comprobar que la transacción no ha fallado.
    }

} 