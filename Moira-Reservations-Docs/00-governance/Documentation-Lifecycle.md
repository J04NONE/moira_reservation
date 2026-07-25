# Documentation Lifecycle

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

Definir el ciclo de vida común de los documentos.

## Estados y transiciones

`Draft → Review → Approved → Implemented → Deprecated → Archived`

| Estado | Significado | Responsable de salida |
| --- | --- | --- |
| Draft | Contenido en elaboración; puede cambiar el autor. | Propietario |
| Review | Contenido presentado a revisores. | Revisores asignados |
| Approved | Contenido aprobado como línea base. | Aprobadores |
| Implemented | Contenido aprobado aplicado en el artefacto consumidor. | Propietario del consumidor |
| Deprecated | Sigue disponible solo como antecedente; declara sustituto. | Propietario |
| Archived | Histórico, sin mantenimiento activo. | Architecture Team |

Un documento Deprecated conserva sus enlaces de trazabilidad y referencia explícitamente el documento que lo reemplaza.

## Dependencias

- [Review Process](Review-Process.md)

## Historial de cambios

| Fecha | Versión | Cambio | Autor |
| --- | --- | --- |
| 2026-07-25 | 0.1 | Creación inicial | Architecture Team |
