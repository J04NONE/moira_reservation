# Documentation Architecture

| Campo | Valor |
| --- | --- |
| Versión | 0.1 |
| Estado | Draft |
| Propietario | Architecture Team |
| Clasificación | Internal |
| Confidencialidad | Uso interno del proyecto |
| Revisores | Product Owner, Architecture Review |
| Aprobadores | Product Owner, Architecture Review Board |
| Última actualización | 2026-07-25 |
| Próxima revisión | Al cierre de la fase |

## Propósito

Describir qué artefactos existen, quién los gobierna, de qué dependen, cuál es su fuente de verdad y cómo evolucionan.

## Arquitectura de artefactos

| Artefacto | Propietario | Depende de | Fuente de verdad | Consumidores | Estado inicial |
| --- | --- | --- | --- | --- | --- |
| Business Discovery & Analysis | Product Owner | Problema de negocio | Glosario, reglas y procesos de fase | Requirements Engineering | Draft |
| Requirements Engineering | Product Owner | Business Discovery & Analysis | SRS, casos de uso, historias y RTM | Diseño, testing | Planned |
| Software Design | Architecture Team | Requisitos aprobados | SDD, modelo de datos y contratos | Implementación | Planned |
| Architecture | Architecture Team | Requisitos y atributos de calidad | C4, decisiones y vistas | DevOps, operaciones | Planned |
| ADRs | Architecture Team | Decisión arquitectónica | ADR individual | Todas las fases | Planned |
| Testing | QA Lead | Requisitos trazables | Estrategia y casos de prueba | Ingeniería | Planned |
| DevOps | DevOps Lead | Arquitectura aprobada | Pipelines e infraestructura | Operaciones | Planned |
| Operations | Operations Lead | DevOps y arquitectura | Runbooks y recuperación | Soporte | Planned |

`05-Glossary.md` es la fuente de verdad para términos de negocio; `07-Business-Rules.md` para reglas; los ADR para decisiones arquitectónicas; y [Decision Log](Decision-Log.md) para decisiones no arquitectónicas.

## Modelo de trazabilidad

`Problema/Vision → Proceso o Regla → Requisito → Caso de uso → Historia → Prueba`

Business Discovery & Analysis entrega hasta Proceso o Regla. Requirements Engineering completa Requisito, Caso de uso e Historia; Testing completa Prueba. Las referencias usan identificadores, nunca copias de texto normativo.

## Evolución

Los documentos siguen el ciclo definido en [Documentation Lifecycle](Documentation-Lifecycle.md). Los cambios aplican [Documentation Principles](Documentation-Principles.md) y [Review Process](Review-Process.md).

## Historial de cambios

| Fecha | Versión | Cambio | Autor |
| --- | --- | --- | --- |
| 2026-07-25 | 0.1 | Creación inicial | Architecture Team |
