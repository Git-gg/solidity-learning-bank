# 🏦 Banco — Práctica de fundamentos en Solidity

Contrato inteligente de práctica que simula un banco simple. Es un proyecto de aprendizaje que junta los fundamentos básicos de Solidity: mappings, condicionales, validaciones y bucles.

## ¿Qué hace?

- **Depositar** — suma saldo a una wallet.
- **Retirar** — resta saldo, con validación (`require`) para que nadie pueda retirar más de lo que tiene.
- **Nivel de cliente** — clasifica cada wallet en Bronce, Plata u Oro según su saldo.
- **Interés compuesto** — simula cómo crecería el saldo de una wallet a lo largo de varios años a un 5% de interés anual compuesto.

## Conceptos practicados

- `mapping(address => uint256)` para llevar saldos por wallet.
- Funciones `view` vs funciones que modifican estado.
- Condicionales (`if` / `else if` / `else`).
- Validaciones con `require`.
- Bucles (`for`) para cálculos acumulativos.
- Manejo de porcentajes sin decimales (Solidity no tiene tipos decimales).

## Nota

Este contrato usa saldos internos (`uint256`) en vez de Ether real — es un ejercicio para practicar lógica de contratos antes de trabajar con `payable`, `msg.value` y transferencias reales de Ether.

## Herramientas

Desarrollado y probado en [Remix IDE](https://remix.ethereum.org/).

---

*Proyecto de práctica personal mientras aprendo desarrollo de smart contracts*
