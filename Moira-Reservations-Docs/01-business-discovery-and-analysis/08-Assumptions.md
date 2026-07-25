# Assumptions

| Campo | Valor |
| --- | --- |
| Versión | 0.2 |
| Estado | Draft |
| Propietario | Product Owner |
| Clasificación | Internal |
| Confidencialidad | Uso interno del proyecto |
| Revisores | Product Owner, Architecture Review |
| Aprobadores | Product Owner, Architecture Review Board |
| Última actualización | 2026-07-25 |
| Próxima revisión | Tras entrevistas |

| ID | Supuesto | Evidencia requerida | Estado | Referencia | RF afectados |
| --- | --- | --- | --- | --- | --- |
| A-001 | El negocio tiene acceso a internet. | EV-PLAN-001 | Unvalidated | R-001 | — |
| A-002 | El cliente accede a un canal de notificación. | EV-PLAN-004 | Unvalidated | R-002 | — |
| A-003 | Una reserva pertenece a una Organización. | Fuente de negocio | Unvalidated | BR-001 | — |
| A-004 | El negocio administra su catálogo. | EV-PLAN-001 | Unvalidated | H-001 | — |
| A-005 | El profesional tiene acceso a un dispositivo digital (smartphone, tableta o PC) durante su jornada. | EV-PLAN-003 | Unvalidated | Análisis de brechas F1→F2 | RF-014, RF-015, RF-028 |
| A-006 | El cliente dispone de smartphone con acceso a WhatsApp, Telegram o correo electrónico. | EV-PLAN-004 | Unvalidated | Análisis de brechas F1→F2 | RF-035, RF-047 |
| A-007 | El negocio tiene al menos un profesional además del propietario (no es unipersonal). | EV-PLAN-001 | Unvalidated | Análisis de brechas F1→F2 | RF-004, RF-010 |
| A-008 | El negocio necesita diferenciar roles de acceso (no todos los empleados ven todo). | EV-PLAN-002 | Unvalidated | Análisis de brechas F1→F2 | RF-009, RF-057 |
| A-009 | El negocio tiene suficiente volumen como para justificar un recepcionista dedicado. | EV-PLAN-001 | Unvalidated | Análisis de brechas F1→F2 | RF-007, RF-031 |
| A-010 | El negocio puede operar con una sola sucursal; la multisede no es obligatoria para el MVP. | EV-PLAN-001 | Unvalidated | Análisis de brechas F1→F2 | RF-002, RF-013 |

## Historial de cambios

| Fecha | Versión | Cambio | Autor |
| --- | --- | --- | --- |
| 2026-07-25 | 0.1 | Creación inicial | Architecture Team |
| 2026-07-25 | 0.2 | Añadidos A-005 a A-010 (supuestos implícitos identificados en análisis de brechas Fase 1→Fase 2) | Architecture Team |
