# Moira Reservations — Documentation System

| Campo | Valor |
| --- | --- |
| Versión | 1.0 |
| Estado | Draft |
| Propietario | Architecture Team |
| Clasificación | Internal |
| Confidencialidad | Uso interno del proyecto |
| Revisores | Product Owner, Architecture Review |
| Aprobadores | Product Owner, Architecture Review Board |
| Última actualización | 2026-07-25 |
| Próxima revisión | Al cierre de Business Discovery & Analysis |

## Gobierno

- [Documentation Principles](00-governance/Documentation-Principles.md)
- [Documentation Architecture](00-governance/Documentation-Architecture.md)
- [Documentation Lifecycle](00-governance/Documentation-Lifecycle.md)
- [Decision Log](00-governance/Decision-Log.md)
- [Review Process](00-governance/Review-Process.md)
- [Document Template](00-governance/Document-Template.md)

## Fases

- [01 — Business Discovery & Analysis](01-business-discovery-and-analysis/README.md)
- 02 — Requirements Engineering; 03 — Software Design; 04 — Architecture; 05 — ADRs; 06 — Testing; 07 — DevOps; 08 — Project Management; 09 — Operations (objetivo futuro).

## Validación

```powershell
powershell -ExecutionPolicy Bypass -File .\00-governance\validate-documentation.ps1
```

Todo cambio sigue [Review Process](00-governance/Review-Process.md).

## Documentos semilla heredados

`00-Architecture-Vision.md`, `01-Product-Vision.md`, `02-SRS.md`, `03-SDD.md`, `04-ADR-001-Documentation-Strategy.md`, `05-Security-Strategy.md`, `06-Multitenancy.md`, `07-Scalability.md`, `08-Traceability.md` y `09-Roadmap.md` se preservan como antecedentes de la transición no destructiva.

## Historial de cambios

| Fecha | Versión | Cambio | Autor |
| --- | --- | --- |
| 2026-07-25 | 1.0 | Índice de sistema documental | Architecture Team |
