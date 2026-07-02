# 🏦 Banco — Práctica de fundamentos en Solidity

Contrato inteligente de práctica que simula un banco simple. Es un proyecto de aprendizaje que junta los fundamentos básicos de Solidity: mappings, condicionales, validaciones, bucles, control de acceso y msg.sender.

## ¿Qué hace?

- **Depositar** — suma saldo a la wallet de quien llama (msg.sender).
- **Retirar** — resta saldo, con validación (require) para que nadie pueda retirar más de lo que tiene.
- **Nivel de cliente** — clasifica la wallet de quien consulta en Bronce, Plata u Oro según su saldo.
- **Interés compuesto** — simula cómo crecería el saldo de quien consulta a lo largo de varios años a un 5% de interés anual compuesto.
- **Resetear saldo** — función protegida: solo el owner (quien desplegó el contrato) puede poner a 0 el saldo de cualquier wallet.

## Conceptos practicados

- `mapping(address => uint256)` para llevar saldos por wallet.
- Funciones `view` vs funciones que modifican estado.
- Condicionales (`if` / `else if` / `else`).
- Validaciones con `require`.
- Bucles (`for`) para cálculos acumulativos.
- Manejo de porcentajes sin decimales (Solidity no tiene tipos decimales).
- `msg.sender` para identificar de forma segura quién llama a cada función, sin depender de parámetros que se puedan falsear.
- `constructor` para guardar al desplegador del contrato como `owner`.
- Control de acceso real: `require(msg.sender == owner, ...)` para proteger funciones sensibles.

## Nota

Este contrato usa saldos internos (`uint256`) en vez de Ether real — es un ejercicio para practicar lógica de contratos antes de trabajar con `payable`, `msg.value` y transferencias reales de Ether.

## Herramientas

Desarrollado y probado en [Remix IDE](https://remix.ethereum.org/).

---

*Proyecto de práctica personal mientras aprendo desarrollo de smart contracts, camino hacia especializarme en auditoría de seguridad.*
