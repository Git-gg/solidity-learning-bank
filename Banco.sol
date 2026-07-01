// SPDX-License-Identifier: MIT
pragma solidity ^0.8.35;

contract Banco {
    mapping(address => uint256) public saldos;

    // Deposita una cantidad en el saldo de una wallet
    function depositar(address wallet, uint256 cantidad) public {
        saldos[wallet] = saldos[wallet] + cantidad;
    }

    // Retira una cantidad, solo si hay saldo suficiente
    function retirar(address wallet, uint256 cantidad) public {
        require(saldos[wallet] >= cantidad, "Saldo insuficiente");
        saldos[wallet] = saldos[wallet] - cantidad;
    }

    // Devuelve el nivel de cliente según su saldo
    function nivelCliente(address wallet) public view returns (string memory) {
        if (saldos[wallet] < 100) {
            return "Bronce";
        } else if (saldos[wallet] <= 999) {
            return "Plata";
        } else {
            return "Oro";
        }
    }

    // Simula el saldo tras varios años con 5% de interés compuesto anual
    function simularInteres(address wallet, uint256 anios) public view returns (uint256) {
        uint256 saldoFinal = saldos[wallet];

        for (uint256 i = 0; i < anios; i++) {
            saldoFinal = saldoFinal + (saldoFinal * 5 / 100);
        }

        return saldoFinal;
    }
}
