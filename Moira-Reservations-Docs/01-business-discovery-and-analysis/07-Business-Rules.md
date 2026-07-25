# Business Rules

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

| ID | Nombre y descripción | Prioridad | Fuente | Actor | Impacto | Estado | Referencia |
| --- | --- | --- | --- | --- | --- | --- | --- |
| BR-001 | Aislamiento: la reserva pertenece a una Organización. | Must | Visión | Administrador | Privacidad | Draft | Procesos |
| BR-002 | Sucursal: la reserva usa una sucursal de su Organización. | Must | Visión | Recepcionista | Consistencia | Draft | Reserva |
| BR-003 | Disponibilidad: solo se reserva franja disponible. | Must | Visión | Cliente | Experiencia | Draft | Reserva/Cambio |
| BR-004 | Conflicto: no existen dos reservas incompatibles. | Must | Visión | Recepcionista | Operación | Draft | Reserva/Cambio |
| BR-005 | Duración: la franja respeta el Servicio. | Should | Negocio | Profesional | Planificación | Draft | Reserva |
| BR-006 | Cambio: se aplica antes del inicio, según política. | Should | Negocio | Cliente | Operación | Draft | Cambio |
| BR-007 | Cancelación: libera la franja. | Must | Visión | Cliente | Ocupación | Draft | Cambio |
| BR-008 | Espera: una cancelación puede activarla. | Should | Visión | Recepcionista | Ocupación | Draft | Cambio/Espera |
| BR-009 | Confirmación: no se reasigna sin confirmación. | Must | Negocio | Cliente | Confianza | Draft | Espera |
| BR-010 | Notificación: usa preferencia de canal. | Should | Visión | Cliente | Comunicación | Draft | Reserva/Espera |
| BR-011 | Auditoría: toda operación crítica (crear, modificar, cancelar) se registra con usuario, fecha y detalle. | Must | Arquitectura | Sistema | Trazabilidad | Draft | Reserva/Cambio/Seguridad |
| BR-012 | Autenticación: todo acceso al sistema requiere identificación previa, excepto rutas públicas explícitas. | Must | Arquitectura | Sistema | Seguridad | Draft | Seguridad |
| BR-013 | Reportes: solo administradores y superadministradores pueden acceder a datos agregados y estadísticas. | Should | Negocio | Administrador | Privacidad | Draft | Reportes |

## Historial de cambios

| Fecha | Versión | Cambio | Autor |
| --- | --- | --- | --- |
| 2026-07-25 | 0.1 | Creación inicial | Architecture Team |
| 2026-07-25 | 0.2 | Añadidas BR-011 Auditoría, BR-012 Autenticación, BR-013 Reportes | Architecture Team |
