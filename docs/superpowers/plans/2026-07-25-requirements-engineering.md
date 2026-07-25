# Requirements Engineering Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Producir la especificación completa de requisitos de Moira Reservations (SRS IEEE 29148), trazable desde las reglas de negocio de la Fase 1, con casos de uso, historias de usuario y RTM.

**Architecture:** Se crea `Moira-Reservations-Docs/02-requirements-engineering/` con 7 artefactos. Los requisitos funcionales (`RF-xxx`) se trazan a reglas `BR-xxx` de la Fase 1. Los casos de uso (`CU-xxx`) se derivan de los procesos TO-BE. Las historias de usuario (`HU-xxx`) se derivan de los casos de uso. La RTM consolida toda la cadena de trazabilidad. El SRS semilla en la raíz se preserva como referencia histórica.

**Tech Stack:** Markdown CommonMark. Sin diagramas UML/C4 — esta fase usa solo texto estructurado. Validación mediante PowerShell extendiendo el script de Fase 1.

---

## Estructura de archivos objetivo

| Ruta | Responsabilidad |
| --- | --- |
| `Moira-Reservations-Docs/02-requirements-engineering/README.md` | Índice, estado de madurez, dependencias, métricas y criterios de salida. |
| `Moira-Reservations-Docs/02-requirements-engineering/Requirements-Methodology.md` | Metodología vinculante para escribirlos, versionarlos y trazarlos. |
| `Moira-Reservations-Docs/02-requirements-engineering/01-Functional-Requirements.md` | Catálogo `RF-001` a `RF-xxx`. |
| `Moira-Reservations-Docs/02-requirements-engineering/02-Non-Functional-Requirements.md` | Catálogo `RNF-xxx` por categorías. |
| `Moira-Reservations-Docs/02-requirements-engineering/03-Use-Cases.md` | Casos de uso `CU-001` a `CU-xxx`. |
| `Moira-Reservations-Docs/02-requirements-engineering/04-User-Stories.md` | Historias `HU-001` a `HU-xxx` con criterios GWT. |
| `Moira-Reservations-Docs/02-requirements-engineering/05-Traceability-Matrix.md` | RTM: BR→RF→CU→HU. |

---

### Task 1: Crear el directorio, el README de fase y la metodología de requisitos

**Files:**
- Create: `Moira-Reservations-Docs/02-requirements-engineering/README.md`
- Create: `Moira-Reservations-Docs/02-requirements-engineering/Requirements-Methodology.md`

- [ ] **Step 1: Crear el directorio**

Run:

```bash
mkdir -p "Moira-Reservations-Docs/02-requirements-engineering"
```

Expected: el directorio existe y está vacío.

- [ ] **Step 2: Escribir el README de la fase**

```markdown
# Requirements Engineering

| Campo | Valor |
| --- | --- |
| Versión | 0.1 |
| Estado | Draft |
| Propietario | Product Owner |
| Clasificación | Internal |
| Confidencialidad | Uso interno del proyecto |
| Revisores | Product Owner, Architecture Review |
| Aprobadores | Product Owner, Architecture Review Board |
| Última actualización | 2026-07-25 |
| Próxima revisión | Al cierre de la fase |

## Entregables

[Requirements Methodology](Requirements-Methodology.md) · [Functional Requirements](01-Functional-Requirements.md) · [Non-Functional Requirements](02-Non-Functional-Requirements.md) · [Use Cases](03-Use-Cases.md) · [User Stories](04-User-Stories.md) · [Traceability Matrix](05-Traceability-Matrix.md)

## Dependencias

| Documento | Relación |
| --- | --- |
| [Product Vision](../01-business-discovery-and-analysis/01-Product-Vision.md) | Alcance del MVP |
| [Stakeholders](../01-business-discovery-and-analysis/03-Stakeholders.md) | Actores del sistema |
| [Glossary](../01-business-discovery-and-analysis/05-Glossary.md) | Lenguaje ubicuo |
| [Business Processes](../01-business-discovery-and-analysis/06-Business-Processes.md) | Base de casos de uso |
| [Business Rules](../01-business-discovery-and-analysis/07-Business-Rules.md) | Restricciones que implementan los requisitos |

## Criterios de salida

Metodología aprobada; RF y RNF cubren el MVP completo sin lagunas; todos los procesos TO-BE tienen casos de uso; reglas BR-001 a BR-010 trazadas a RF; RTM completa y verificable; Product Owner y Architecture Review aprueban el cierre.
```

- [ ] **Step 3: Escribir Requirements-Methodology.md**

Este documento define las reglas de escritura que todos los artefactos de la fase deben seguir. Incluir:

```markdown
# Requirements Methodology

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

Definir las convenciones vinculantes para identificar, redactar, priorizar, versionar, deprecar y trazar los requisitos de Moira Reservations.

## Identificadores

| Tipo | Prefijo | Rango |
| --- | --- | --- |
| Requisito funcional | RF- | 001–999 |
| Requisito no funcional | RNF- | SEC-001, PERF-001, AVA-001, OBS-001, USA-001, MAN-001 |
| Caso de uso | CU- | 001–999 |
| Historia de usuario | HU- | 001–999 |

Los identificadores son estables y no se reutilizan tras deprecación.

## Redacción de requisitos funcionales

`RF-xxx: El sistema debe [acción] para que [resultado].`

Campos obligatorios: ID, título, descripción, reglas de negocio relacionadas (BR-xxx), prioridad MoSCoW, actor, fuente, dependencias y estado.

## Redacción de requisitos no funcionales

`RNF-xxx: El sistema debe [atributo de calidad] medido por [métrica].`

Campos obligatorios: ID, título, categoría, descripción, umbral medible, prioridad MoSCoW, fuente y estado.

## Redacción de casos de uso

Estructura obligatoria: actores (primario/secundarios), precondiciones, postcondiciones, flujo principal numerado, flujos alternativos, excepciones, reglas de negocio asociadas y requisitos funcionales asociados.

## Redacción de historias de usuario

Formato: `Como [rol] quiero [acción] para [beneficio].`

Criterios de aceptación obligatorios en formato Given/When/Then (GWT). Al menos un escenario por historia. Campos adicionales: caso de uso relacionado, prioridad MoSCoW, talla (XS/S/M/L/XL).

## Priorización

Usar exclusivamente MoSCoW:
- **Must:** indispensable para el MVP.
- **Should:** importante pero no crítica; se incluye si el tiempo lo permite.
- **Could:** deseable para una iteración posterior.
- **Won't:** explícitamente excluido del MVP.

## Versionado y deprecación

Los requisitos se versionan mediante el campo Versión del documento. Un requisito deprecated conserva su ID y referencia explícitamente el requisito que lo reemplaza.

## Trazabilidad

Cadena obligatoria: `Regla de negocio BR → Requisito funcional RF → Caso de uso CU → Historia de usuario HU → Prueba (Fase 4)`.

Esta fase completa hasta HU. La RTM en `05-Traceability-Matrix.md` es la fuente de verdad de la trazabilidad.

## Referencias

- [Documentation Principles](../00-governance/Documentation-Principles.md)
- [Documentation Architecture](../00-governance/Documentation-Architecture.md)
- [Glossary](../01-business-discovery-and-analysis/05-Glossary.md)
- ISO/IEC/IEEE 29148:2018
```

- [ ] **Step 4: Verificar directorio y archivos creados**

Run:

```bash
ls -la "Moira-Reservations-Docs/02-requirements-engineering/"
```

Expected: `README.md` y `Requirements-Methodology.md` existen.

---

### Task 2: Catálogo de requisitos funcionales (RF)

**Files:**
- Create: `Moira-Reservations-Docs/02-requirements-engineering/01-Functional-Requirements.md`

- [ ] **Step 1: Escribir la cabecera y categorías del documento**

```markdown
# Functional Requirements

| Campo | Valor |
| --- | --- |
| Versión | 0.1 |
| Estado | Draft |
| Propietario | Product Owner |
| Clasificación | Internal |
| Confidencialidad | Uso interno del proyecto |
| Revisores | Product Owner, Architecture Review |
| Aprobadores | Product Owner, Architecture Review Board |
| Última actualización | 2026-07-25 |
| Próxima revisión | Al cierre de la fase |

## Organización del catálogo

Los requisitos se agrupan por módulo funcional:

| Módulo | Rango de IDs |
| --- | --- |
| Gestión de dominio | RF-001 a RF-012 |
| Horarios y disponibilidad | RF-013 a RF-022 |
| Reservas y agenda | RF-023 a RF-038 |
| Lista de espera y reasignación | RF-039 a RF-045 |
| Notificaciones | RF-046 a RF-055 |
| Seguridad y control de acceso | RF-056 a RF-065 |
| Reportes y paneles | RF-066 a RF-075 |
```

- [ ] **Step 2: Escribir los requisitos RF-001 a RF-012 (Gestión de dominio)**

Cada requisito debe seguir el patrón definido en la metodología. Ejemplo de los primeros 12:

```markdown
### RF-001: Registrar organización

El sistema debe permitir al superadministrador registrar una nueva organización con nombre, identificador fiscal, dirección y datos de contacto para que pueda operar de forma independiente en la plataforma.

- **Reglas:** BR-001
- **Prioridad:** Must
- **Actor:** Superadministrador
- **Fuente:** [Product Vision](../01-business-discovery-and-analysis/01-Product-Vision.md)
- **Dependencias:** Ninguna
- **Estado:** Draft

---

### RF-002: Gestionar sucursales

El sistema debe permitir al administrador de organización crear, editar y desactivar sucursales dentro de su organización, con nombre, dirección, horario general y datos de contacto.

- **Reglas:** BR-001, BR-002
- **Prioridad:** Must
- **Actor:** Administrador de organización
- **Fuente:** [Business Rules BR-002](../01-business-discovery-and-analysis/07-Business-Rules.md)
- **Dependencias:** RF-001
- **Estado:** Draft

---

### RF-003: Gestionar servicios

El sistema debe permitir al administrador de organización definir servicios (nombre, descripción, duración en minutos, precio, capacidad máxima de clientes simultáneos) y categorizarlos.

- **Reglas:** BR-005
- **Prioridad:** Must
- **Actor:** Administrador de organización
- **Fuente:** [Business Rules BR-005](../01-business-discovery-and-analysis/07-Business-Rules.md)
- **Dependencias:** RF-001
- **Estado:** Draft

---

### RF-004: Gestionar profesionales

El sistema debe permitir al administrador crear, editar y desactivar profesionales con nombre, datos de contacto, especialidades y sucursal(es) asignada(s).

- **Reglas:** BR-003
- **Prioridad:** Must
- **Actor:** Administrador de organización
- **Fuente:** [Business Rules BR-003](../01-business-discovery-and-analysis/07-Business-Rules.md)
- **Dependencias:** RF-001, RF-002
- **Estado:** Draft

---

### RF-005: Definir especialidades

El sistema debe permitir asociar una o más especialidades a cada profesional y vincular cada especialidad a los servicios que puede prestar.

- **Reglas:** BR-003
- **Prioridad:** Should
- **Actor:** Administrador de organización
- **Fuente:** [Business Rules BR-003](../01-business-discovery-and-analysis/07-Business-Rules.md)
- **Dependencias:** RF-003, RF-004
- **Estado:** Draft

---

### RF-006: Gestionar recursos reservables

El sistema debe permitir al administrador de organización definir recursos reservables (equipos, salas, instrumentos) con nombre, descripción, capacidad y sucursal asignada.

- **Reglas:** BR-002
- **Prioridad:** Should
- **Actor:** Administrador de organización
- **Fuente:** [Domain Overview](../01-business-discovery-and-analysis/10-Domain-Overview.md)
- **Dependencias:** RF-001, RF-002
- **Estado:** Draft

---

### RF-007: Gestionar clientes

El sistema debe permitir al recepcionista registrar, editar y buscar clientes con nombre, datos de contacto, canales de notificación preferidos e historial de reservas.

- **Reglas:** Ninguna directa
- **Prioridad:** Must
- **Actor:** Recepcionista
- **Fuente:** [Stakeholders](../01-business-discovery-and-analysis/03-Stakeholders.md)
- **Dependencias:** RF-001
- **Estado:** Draft

---

### RF-008: Autoregistro de clientes

El sistema debe permitir al cliente registrarse de forma autónoma proporcionando nombre, correo electrónico y número de teléfono.

- **Reglas:** Ninguna directa
- **Prioridad:** Should
- **Actor:** Cliente
- **Fuente:** [Stakeholders](../01-business-discovery-and-analysis/03-Stakeholders.md)
- **Dependencias:** RF-007
- **Estado:** Draft

---

### RF-009: Gestionar roles de usuario

El sistema debe permitir al superadministrador y al administrador de organización definir roles (superadministrador, administrador, recepcionista, profesional) con permisos específicos.

- **Reglas:** BR-001
- **Prioridad:** Must
- **Actor:** Superadministrador, Administrador
- **Fuente:** [Architecture Vision](../00-Architecture-Vision.md)
- **Dependencias:** Ninguna
- **Estado:** Draft

---

### RF-010: Gestionar usuarios del sistema

El sistema debe permitir al administrador de organización crear, editar, activar y desactivar usuarios del sistema (recepcionistas, profesionales) asociándolos a roles y sucursales.

- **Reglas:** BR-001
- **Prioridad:** Must
- **Actor:** Administrador de organización
- **Fuente:** [Stakeholders](../01-business-discovery-and-analysis/03-Stakeholders.md)
- **Dependencias:** RF-004, RF-009
- **Estado:** Draft

---

### RF-011: Configurar canales de notificación

El sistema debe permitir al administrador de organización habilitar y configurar los canales de notificación disponibles (WhatsApp, Telegram, correo electrónico, SMS) por organización.

- **Reglas:** BR-010
- **Prioridad:** Should
- **Actor:** Administrador de organización
- **Fuente:** [Business Rules BR-010](../01-business-discovery-and-analysis/07-Business-Rules.md)
- **Dependencias:** RF-001
- **Estado:** Draft

---

### RF-012: Gestionar políticas de organización

El sistema debe permitir al administrador de organización configurar políticas globales: plazo mínimo de cancelación, plazo mínimo de reprogramación, tiempo entre reservas, límite de reservas por cliente y ventana de programación máxima.

- **Reglas:** BR-006, BR-007
- **Prioridad:** Should
- **Actor:** Administrador de organización
- **Fuente:** [Business Rules BR-006, BR-007](../01-business-discovery-and-analysis/07-Business-Rules.md)
- **Dependencias:** RF-001
- **Estado:** Draft
```

- [ ] **Step 3: Escribir los requisitos RF-013 a RF-022 (Horarios y disponibilidad)**

```markdown
### RF-013: Configurar horario general de sucursal

El sistema debe permitir al administrador de organización definir el horario de atención general de cada sucursal por día de la semana, incluyendo franjas de apertura y cierre.

- **Reglas:** BR-005
- **Prioridad:** Must
- **Actor:** Administrador de organización
- **Dependencias:** RF-002
- **Estado:** Draft

---

### RF-014: Configurar disponibilidad individual de profesional

El sistema debe permitir al administrador o al profesional definir la disponibilidad semanal individual (días y franjas) dentro del horario de la sucursal.

- **Reglas:** BR-003, BR-005
- **Prioridad:** Must
- **Actor:** Administrador, Profesional
- **Dependencias:** RF-004, RF-013
- **Estado:** Draft

---

### RF-015: Bloquear franjas por ausencia

El sistema debe permitir al profesional bloquear franjas específicas por ausencia, permiso o descanso, y al administrador bloquear franjas de cualquier profesional de su organización.

- **Reglas:** BR-003
- **Prioridad:** Must
- **Actor:** Profesional, Administrador
- **Dependencias:** RF-014
- **Estado:** Draft

---

### RF-016: Gestionar días festivos y horarios especiales

El sistema debe permitir al administrador de organización definir días festivos globales y excepciones de horario por sucursal.

- **Reglas:** BR-005
- **Prioridad:** Should
- **Actor:** Administrador de organización
- **Dependencias:** RF-013
- **Estado:** Draft

---

### RF-017: Calcular disponibilidad en tiempo real

El sistema debe calcular y mostrar las franjas disponibles para un servicio y profesional (o asignación automática) en una sucursal y fecha determinadas, considerando horario, bloqueos, reservas existentes y duración del servicio.

- **Reglas:** BR-003, BR-004, BR-005
- **Prioridad:** Must
- **Actor:** Cliente, Recepcionista
- **Dependencias:** RF-013, RF-014, RF-015, RF-016
- **Estado:** Draft

---

### RF-018: Validar disponibilidad antes de reservar

El sistema debe verificar que la franja solicitada sigue estando disponible en el momento de confirmar la reserva, manejando condiciones de carrera.

- **Reglas:** BR-003, BR-004
- **Prioridad:** Must
- **Actor:** Sistema
- **Dependencias:** RF-017
- **Estado:** Draft

---

### RF-019: Configurar duración y capacidad de servicios

El sistema debe permitir al administrador definir la duración en minutos y la capacidad máxima de clientes simultáneos de cada servicio.

- **Reglas:** BR-005
- **Prioridad:** Must
- **Actor:** Administrador de organización
- **Dependencias:** RF-003
- **Estado:** Draft

---

### RF-020: Gestionar horarios por servicio

El sistema debe permitir al administrador definir en qué días y franjas está disponible cada servicio (si aplica restricción distinta al horario general).

- **Reglas:** BR-005
- **Prioridad:** Could
- **Actor:** Administrador de organización
- **Dependencias:** RF-003, RF-013
- **Estado:** Draft

---

### RF-021: Notificar conflictos de horario

El sistema debe alertar al administrador o profesional cuando se configuren horarios que generen solapamientos o inconsistencias.

- **Reglas:** BR-004
- **Prioridad:** Should
- **Actor:** Administrador, Profesional
- **Dependencias:** RF-014
- **Estado:** Draft

---

### RF-022: Copiar horarios entre profesionales

El sistema debe permitir copiar la configuración de disponibilidad de un profesional a otro para facilitar la configuración masiva.

- **Reglas:** Ninguna directa
- **Prioridad:** Could
- **Actor:** Administrador de organización
- **Dependencias:** RF-014
- **Estado:** Draft
```

- [ ] **Step 4: Escribir los requisitos RF-023 a RF-038 (Reservas y agenda)**

```markdown
### RF-023: Crear reserva con profesional seleccionado

El sistema debe permitir al recepcionista o al cliente crear una reserva seleccionando sucursal, servicio, profesional y franja horaria disponible.

- **Reglas:** BR-003, BR-004, BR-005
- **Prioridad:** Must
- **Actor:** Recepcionista, Cliente
- **Dependencias:** RF-017, RF-018
- **Estado:** Draft

---

### RF-024: Crear reserva con asignación automática

El sistema debe permitir crear una reserva sin seleccionar profesional, asignando automáticamente el primer profesional disponible con la especialidad requerida.

- **Reglas:** BR-003
- **Prioridad:** Should
- **Actor:** Cliente, Recepcionista
- **Dependencias:** RF-017, RF-018, RF-005
- **Estado:** Draft

---

### RF-025: Reprogramar reserva

El sistema debe permitir al recepcionista o cliente reprogramar una reserva existente a una nueva fecha, hora o profesional, validando disponibilidad.

- **Reglas:** BR-006
- **Prioridad:** Must
- **Actor:** Recepcionista, Cliente
- **Dependencias:** RF-023, RF-017
- **Estado:** Draft

---

### RF-026: Cancelar reserva

El sistema debe permitir al recepcionista o cliente cancelar una reserva existente dentro del plazo configurado por la organización.

- **Reglas:** BR-006, BR-007
- **Prioridad:** Must
- **Actor:** Recepcionista, Cliente
- **Dependencias:** RF-023, RF-012
- **Estado:** Draft

---

### RF-027: Liberar franja tras cancelación

El sistema debe liberar la franja ocupada tras una cancelación y marcarla como disponible inmediatamente.

- **Reglas:** BR-007
- **Prioridad:** Must
- **Actor:** Sistema
- **Dependencias:** RF-026
- **Estado:** Draft

---

### RF-028: Visualizar agenda por profesional y sucursal

El sistema debe mostrar la agenda diaria, semanal o mensual de un profesional o sucursal, con reservas confirmadas, bloqueos y franjas disponibles.

- **Reglas:** BR-004
- **Prioridad:** Must
- **Actor:** Recepcionista, Profesional, Administrador
- **Dependencias:** RF-023, RF-015
- **Estado:** Draft

---

### RF-029: Visualizar agenda consolidada de sucursal

El sistema debe mostrar una vista consolidada de todos los profesionales de una sucursal para facilitar la asignación manual de reservas.

- **Reglas:** Ninguna directa
- **Prioridad:** Should
- **Actor:** Recepcionista
- **Dependencias:** RF-028
- **Estado:** Draft

---

### RF-030: Registrar historial de cambios de reserva

El sistema debe registrar todo cambio en una reserva (creación, reprogramación, cancelación, reasignación) con fecha, hora, usuario, acción y valores anteriores/nuevos.

- **Reglas:** BR-011
- **Prioridad:** Must
- **Actor:** Sistema
- **Dependencias:** RF-023, RF-025, RF-026
- **Estado:** Draft

---

### RF-031: Buscar reservas

El sistema debe permitir buscar reservas por cliente, profesional, sucursal, fecha, servicio o estado.

- **Reglas:** Ninguna directa
- **Prioridad:** Must
- **Actor:** Recepcionista, Administrador
- **Dependencias:** RF-023
- **Estado:** Draft

---

### RF-032: Confirmar asistencia

El sistema debe permitir al recepcionista marcar una reserva como "confirmada" cuando el cliente llega al establecimiento.

- **Reglas:** Ninguna directa
- **Prioridad:** Should
- **Actor:** Recepcionista
- **Dependencias:** RF-023
- **Estado:** Draft

---

### RF-033: Registrar no-show

El sistema debe permitir al recepcionista marcar una reserva como "no-show" cuando el cliente no asiste sin cancelar.

- **Reglas:** Ninguna directa
- **Prioridad:** Should
- **Actor:** Recepcionista
- **Dependencias:** RF-023
- **Estado:** Draft

---

### RF-034: Limitar reservas simultáneas por cliente

El sistema debe impedir que un cliente tenga dos o más reservas activas en el mismo intervalo horario en la misma organización.

- **Reglas:** BR-004
- **Prioridad:** Should
- **Actor:** Sistema
- **Dependencias:** RF-023
- **Estado:** Draft

---

### RF-035: Notificar confirmación de reserva

El sistema debe enviar una notificación de confirmación al cliente tras crear una reserva, usando su canal preferido.

- **Reglas:** BR-010
- **Prioridad:** Must
- **Actor:** Sistema
- **Dependencias:** RF-023, RF-011
- **Estado:** Draft

---

### RF-036: Notificar reprogramación

El sistema debe notificar al cliente cuando su reserva es reprogramada, indicando los nuevos detalles.

- **Reglas:** BR-010
- **Prioridad:** Must
- **Actor:** Sistema
- **Dependencias:** RF-025, RF-011
- **Estado:** Draft

---

### RF-037: Notificar cancelación

El sistema debe notificar al cliente cuando su reserva es cancelada.

- **Reglas:** BR-010
- **Prioridad:** Must
- **Actor:** Sistema
- **Dependencias:** RF-026, RF-011
- **Estado:** Draft

---

### RF-038: Enviar recordatorio automático

El sistema debe enviar un recordatorio automático al cliente antes de su reserva (por ejemplo, 24 horas antes) usando su canal preferido.

- **Reglas:** BR-010
- **Prioridad:** Must
- **Actor:** Sistema
- **Dependencias:** RF-011
- **Estado:** Draft
```

- [ ] **Step 5: Escribir los requisitos RF-039 a RF-045 (Lista de espera y reasignación)**

```markdown
### RF-039: Solicitar lista de espera

El sistema debe permitir al cliente o recepcionista solicitar la inclusión en lista de espera para un servicio, profesional y franja específicos cuando no hay disponibilidad.

- **Reglas:** BR-008
- **Prioridad:** Should
- **Actor:** Cliente, Recepcionista
- **Dependencias:** RF-023
- **Estado:** Draft

---

### RF-040: Priorizar lista de espera

El sistema debe ordenar los candidatos en lista de espera por orden de antigüedad (FIFO), permitiendo al administrador configurar criterios adicionales de prioridad.

- **Reglas:** BR-009 (orden de prioridad)
- **Prioridad:** Should
- **Actor:** Sistema
- **Dependencias:** RF-039
- **Estado:** Draft

---

### RF-041: Activar lista de espera tras cancelación

El sistema debe detectar automáticamente cuándo una cancelación libera una franja con lista de espera activa y notificar al recepcionista.

- **Reglas:** BR-008
- **Prioridad:** Should
- **Actor:** Sistema
- **Dependencias:** RF-026, RF-039, RF-040
- **Estado:** Draft

---

### RF-042: Proponer reasignación a cliente en espera

El sistema debe notificar al primer cliente elegible en la lista de espera ofreciéndole la franja liberada, con un plazo de confirmación configurable.

- **Reglas:** BR-009, BR-010
- **Prioridad:** Should
- **Actor:** Sistema
- **Dependencias:** RF-041, RF-011
- **Estado:** Draft

---

### RF-043: Confirmar o rechazar reasignación

El sistema debe permitir al cliente en lista de espera confirmar o rechazar la franja ofrecida. Si rechaza o no responde en el plazo, se ofrece al siguiente candidato.

- **Reglas:** BR-009
- **Prioridad:** Should
- **Actor:** Cliente
- **Dependencias:** RF-042
- **Estado:** Draft

---

### RF-044: Reasignar reserva automáticamente al confirmar

El sistema debe crear la reserva automáticamente cuando el cliente confirma la reasignación desde lista de espera, liberando su puesto en la lista.

- **Reglas:** BR-009
- **Prioridad:** Should
- **Actor:** Sistema
- **Dependencias:** RF-043
- **Estado:** Draft

---

### RF-045: Cancelar suscripción a lista de espera

El sistema debe permitir al cliente o recepcionista retirar una solicitud de lista de espera en cualquier momento.

- **Reglas:** Ninguna directa
- **Prioridad:** Should
- **Actor:** Cliente, Recepcionista
- **Dependencias:** RF-039
- **Estado:** Draft
```

- [ ] **Step 6: Escribir los requisitos RF-046 a RF-055 (Notificaciones)**

```markdown
### RF-046: Configurar plantillas de notificación

El sistema debe permitir al administrador de organización definir plantillas de notificación para cada evento (confirmación, recordatorio, cancelación, reprogramación, oferta de espera).

- **Reglas:** BR-010
- **Prioridad:** Should
- **Actor:** Administrador de organización
- **Dependencias:** RF-011
- **Estado:** Draft

---

### RF-047: Elegir canal de notificación por cliente

El sistema debe permitir al cliente seleccionar su canal de notificación preferido (WhatsApp, Telegram, correo electrónico, SMS) al registrarse o al crear una reserva.

- **Reglas:** BR-010
- **Prioridad:** Must
- **Actor:** Cliente
- **Dependencias:** RF-007, RF-008, RF-011
- **Estado:** Draft

---

### RF-048: Registrar estado de envío de notificaciones

El sistema debe registrar el estado de cada notificación enviada (pendiente, entregada, fallida, leída) para su seguimiento.

- **Reglas:** Ninguna directa
- **Prioridad:** Should
- **Actor:** Sistema
- **Dependencias:** RF-035, RF-036, RF-037, RF-038
- **Estado:** Draft

---

### RF-049: Reintentar notificaciones fallidas

El sistema debe reintentar el envío de notificaciones fallidas hasta un límite configurable, escalando a un canal alternativo si está disponible.

- **Reglas:** Ninguna directa
- **Prioridad:** Could
- **Actor:** Sistema
- **Dependencias:** RF-048
- **Estado:** Draft

---

### RF-050: Notificar al profesional nuevas reservas

El sistema debe notificar al profesional cuando se le asigna una nueva reserva.

- **Reglas:** BR-010
- **Prioridad:** Should
- **Actor:** Sistema
- **Dependencias:** RF-023, RF-011
- **Estado:** Draft

---

### RF-051: Notificar cambios de agenda al profesional

El sistema debe notificar al profesional cuando una de sus reservas es reprogramada o cancelada.

- **Reglas:** BR-010
- **Prioridad:** Should
- **Actor:** Sistema
- **Dependencias:** RF-025, RF-026, RF-011
- **Estado:** Draft

---

### RF-052: Configurar horarios de silencio

El sistema debe permitir al cliente configurar horarios de silencio durante los cuales no desea recibir notificaciones.

- **Reglas:** Ninguna directa
- **Prioridad:** Could
- **Actor:** Cliente
- **Dependencias:** RF-047
- **Estado:** Draft

---

### RF-053: Notificar disponibilidad de profesional

El sistema debe notificar al administrador o recepcionista cuando un profesional marca o desmarca su disponibilidad.

- **Reglas:** Ninguna directa
- **Prioridad:** Could
- **Actor:** Sistema
- **Dependencias:** RF-015
- **Estado:** Draft

---

### RF-054: Notificar clientes recurrentes

El sistema debe permitir enviar notificaciones periódicas a clientes recurrentes para fidelización (fuera del MVP, opción Could documentada para futuro).

- **Reglas:** Ninguna directa
- **Prioridad:** Won't
- **Actor:** Sistema
- **Dependencias:** RF-007, RF-011
- **Estado:** Draft

---

### RF-055: Configurar intervalo de recordatorio

El sistema debe permitir al administrador de organización configurar el intervalo de tiempo antes de la reserva para el envío del recordatorio automático.

- **Reglas:** BR-010
- **Prioridad:** Should
- **Actor:** Administrador de organización
- **Dependencias:** RF-038, RF-012
- **Estado:** Draft
```

- [ ] **Step 7: Escribir los requisitos RF-056 a RF-065 (Seguridad y control de acceso)**

```markdown
### RF-056: Autenticar usuarios

El sistema debe autenticar a todos los usuarios mediante credenciales (correo electrónico y contraseña) antes de permitir el acceso, con opción de autenticación multifactor.

- **Reglas:** BR-012
- **Prioridad:** Must
- **Actor:** Todos los usuarios
- **Dependencias:** RF-010
- **Estado:** Draft

---

### RF-057: Controlar acceso por rol (RBAC)

El sistema debe implementar control de acceso basado en roles, restringiendo las acciones y datos visibles según el rol del usuario autenticado.

- **Reglas:** BR-001
- **Prioridad:** Must
- **Actor:** Sistema
- **Dependencias:** RF-009, RF-056
- **Estado:** Draft

---

### RF-058: Aislar datos por organización

El sistema debe garantizar que los datos de una organización no sean accesibles por usuarios de otra organización.

- **Reglas:** BR-001
- **Prioridad:** Must
- **Actor:** Sistema
- **Dependencias:** RF-057
- **Estado:** Draft

---

### RF-059: Auditar operaciones críticas

El sistema debe registrar en un log de auditoría toda operación de creación, modificación y cancelación de reservas, gestión de usuarios y cambios de configuración.

- **Reglas:** BR-011
- **Prioridad:** Must
- **Actor:** Sistema
- **Dependencias:** RF-030
- **Estado:** Draft

---

### RF-060: Recuperar contraseña

El sistema debe permitir a los usuarios recuperar su contraseña mediante un flujo seguro de restablecimiento por correo electrónico.

- **Reglas:** BR-012
- **Prioridad:** Must
- **Actor:** Todos los usuarios
- **Dependencias:** RF-056
- **Estado:** Draft

---

### RF-061: Cerrar sesión

El sistema debe permitir al usuario cerrar su sesión activa, invalidando el token de autenticación.

- **Reglas:** Ninguna directa
- **Prioridad:** Must
- **Actor:** Todos los usuarios
- **Dependencias:** RF-056
- **Estado:** Draft

---

### RF-062: Gestionar sesiones activas

El sistema debe permitir al administrador de organización ver y cerrar sesiones activas de usuarios de su organización.

- **Reglas:** BR-001
- **Prioridad:** Could
- **Actor:** Administrador de organización
- **Dependencias:** RF-056
- **Estado:** Draft

---

### RF-063: Restringir acceso a datos por sucursal

El sistema debe permitir restringir el acceso de un recepcionista o profesional a los datos de una o varias sucursales específicas.

- **Reglas:** BR-002
- **Prioridad:** Should
- **Actor:** Administrador de organización
- **Dependencias:** RF-009, RF-010, RF-002
- **Estado:** Draft

---

### RF-064: Caducidad de sesión por inactividad

El sistema debe cerrar automáticamente la sesión de un usuario tras un período configurable de inactividad.

- **Reglas:** Ninguna directa
- **Prioridad:** Should
- **Actor:** Sistema
- **Dependencias:** RF-056
- **Estado:** Draft

---

### RF-065: Registrar acceso al sistema

El sistema debe registrar en el log de auditoría los intentos de acceso exitosos y fallidos.

- **Reglas:** BR-012
- **Prioridad:** Should
- **Actor:** Sistema
- **Dependencias:** RF-056, RF-059
- **Estado:** Draft
```

- [ ] **Step 8: Escribir los requisitos RF-066 a RF-075 (Reportes y paneles)**

Incluir requisitos para:

```markdown
### RF-066: Ver agenda diaria por profesional

El sistema debe mostrar la agenda del día para un profesional seleccionado, con reservas, bloqueos y franjas libres.

- **Reglas:** Ninguna directa
- **Prioridad:** Must
- **Actor:** Recepcionista, Profesional
- **Dependencias:** RF-028
- **Estado:** Draft

---

### RF-067: Ver agenda semanal por sucursal

El sistema debe mostrar una vista semanal consolidada de todos los profesionales de una sucursal.

- **Reglas:** Ninguna directa
- **Prioridad:** Should
- **Actor:** Recepcionista, Administrador
- **Dependencias:** RF-029
- **Estado:** Draft

---

### RF-068: Ver estadísticas de ocupación

El sistema debe mostrar estadísticas de ocupación por profesional, servicio y sucursal en un rango de fechas seleccionable.

- **Reglas:** BR-013
- **Prioridad:** Should
- **Actor:** Administrador de organización
- **Dependencias:** RF-023, RF-026
- **Estado:** Draft

---

### RF-069: Ver tasa de no-shows

El sistema debe mostrar el porcentaje de no-shows por profesional, servicio y sucursal.

- **Reglas:** BR-013
- **Prioridad:** Could
- **Actor:** Administrador de organización
- **Dependencias:** RF-033, RF-068
- **Estado:** Draft

---

### RF-070: Ver reporte de cancelaciones

El sistema debe mostrar estadísticas de cancelaciones con desglose por motivo, profesional, servicio y sucursal.

- **Reglas:** BR-013
- **Prioridad:** Could
- **Actor:** Administrador de organización
- **Dependencias:** RF-026
- **Estado:** Draft

---

### RF-071: Exportar reportes

El sistema debe permitir exportar los reportes y estadísticas en formatos CSV y PDF.

- **Reglas:** BR-013
- **Prioridad:** Could
- **Actor:** Administrador de organización
- **Dependencias:** RF-068, RF-069, RF-070
- **Estado:** Draft

---

### RF-072: Ver lista de reservas del día

El sistema debe mostrar la lista completa de reservas del día para una sucursal, ordenada por hora.

- **Reglas:** Ninguna directa
- **Prioridad:** Must
- **Actor:** Recepcionista
- **Dependencias:** RF-028
- **Estado:** Draft

---

### RF-073: Ver lista de espera activa

El sistema debe mostrar la lista de espera activa con detalle de cliente, servicio, profesional y tiempo en espera.

- **Reglas:** BR-008, BR-009
- **Prioridad:** Should
- **Actor:** Recepcionista, Administrador
- **Dependencias:** RF-039
- **Estado:** Draft

---

### RF-074: Dashboard de métricas de sucursal

El sistema debe mostrar un dashboard con métricas clave de la sucursal: reservas del día, ocupación semanal, cancelaciones y no-shows.

- **Reglas:** BR-013
- **Prioridad:** Could
- **Actor:** Administrador de organización
- **Dependencias:** RF-068, RF-069, RF-070
- **Estado:** Draft

---

### RF-075: Historial de reservas por cliente

El sistema debe mostrar el historial completo de reservas de un cliente, incluyendo reservas pasadas, canceladas y futuras.

- **Reglas:** Ninguna directa
- **Prioridad:** Should
- **Actor:** Recepcionista, Cliente
- **Dependencias:** RF-007, RF-030
- **Estado:** Draft
```

- [ ] **Step 9: Verificar cantidad y cobertura de RF**

Run:

```bash
grep -c "^### RF-" "Moira-Reservations-Docs/02-requirements-engineering/01-Functional-Requirements.md"
```

Expected: 75 RF (RF-001 a RF-075).

- [ ] **Step 10: Verificar que todas las BR-xxx referenciadas existen en Fase 1**

Run:

```powershell
$brFile = Get-Content -Raw "Moira-Reservations-Docs/01-business-discovery-and-analysis/07-Business-Rules.md"
$rfFile = Get-Content -Raw "Moira-Reservations-Docs/02-requirements-engineering/01-Functional-Requirements.md"
$referencedBRs = [regex]::Matches($rfFile, 'BR-\d{3}') | ForEach-Object Value | Sort-Object -Unique
$missingBRs = $referencedBRs | Where-Object { $brFile -notmatch $_ }
if ($missingBRs.Count -gt 0) {
    Write-Host "FAIL: BRs referenciadas que no existen en Fase 1:"
    $missingBRs | ForEach-Object { Write-Host "  $_" }
    exit 1
}
"PASS: $($referencedBRs.Count) BRs referenciadas verificadas contra Fase 1"
```

Expected: exit code 0 y todas las BR existen en `07-Business-Rules.md`.

---

### Task 3: Catálogo de requisitos no funcionales (RNF)

**Files:**
- Create: `Moira-Reservations-Docs/02-requirements-engineering/02-Non-Functional-Requirements.md`

- [ ] **Step 1: Escribir encabezado, categorías y RNF de seguridad**

```markdown
# Non-Functional Requirements

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

## Categorías

- **RNF-SEC:** Seguridad
- **RNF-PERF:** Rendimiento
- **RNF-AVA:** Disponibilidad
- **RNF-OBS:** Observabilidad
- **RNF-USA:** Usabilidad
- **RNF-MAN:** Mantenibilidad

---

## Seguridad

### RNF-SEC-001: Aislamiento lógico entre organizaciones

El sistema debe garantizar aislamiento lógico total entre organizaciones de forma que ningún usuario pueda acceder a datos de otra organización.

- **Categoría:** Seguridad
- **Umbral:** 0 incidentes de fuga de datos entre organizaciones.
- **Prioridad:** Must
- **Fuente:** [Architecture Vision](../00-Architecture-Vision.md), [Business Rules BR-001](../01-business-discovery-and-analysis/07-Business-Rules.md)
- **Estado:** Draft

---

### RNF-SEC-002: Autenticación obligatoria

El sistema debe exigir autenticación para todas las rutas y operaciones, excepto las explícitamente públicas (registro, inicio de sesión, recuperación de contraseña).

- **Categoría:** Seguridad
- **Umbral:** 100 % de los endpoints protegidos (excluyendo los públicos definidos).
- **Prioridad:** Must
- **Fuente:** [SRS semilla](../02-SRS.md) RNF-SEC-002
- **Estado:** Draft

---

### RNF-SEC-003: Encriptación en tránsito y en reposo

El sistema debe encriptar toda la comunicación entre cliente y servidor mediante TLS 1.2+ y los datos sensibles en reposo mediante AES-256.

- **Categoría:** Seguridad
- **Umbral:** TLS 1.2+ para todas las conexiones externas; datos sensibles encriptados con AES-256.
- **Prioridad:** Must
- **Fuente:** [SRS semilla](../02-SRS.md) RNF-SEC-005
- **Estado:** Draft

---

### RNF-SEC-004: Protección contra ataques comunes

El sistema debe implementar protecciones contra CSRF, XSS, SQL injection y rate limiting en endpoints críticos.

- **Categoría:** Seguridad
- **Umbral:** Puntaje A+ en auditoría OWASP ZAP; 0 vulnerabilidades críticas/altas.
- **Prioridad:** Must
- **Fuente:** Buenas prácticas de seguridad web
- **Estado:** Draft

---

### RNF-SEC-005: Política de contraseñas

El sistema debe exigir contraseñas con longitud mínima de 8 caracteres, incluyendo mayúsculas, minúsculas, números y caracteres especiales.

- **Categoría:** Seguridad
- **Umbral:** Longitud mínima 8 caracteres, 4 clases de caracteres.
- **Prioridad:** Should
- **Fuente:** Práctica estándar de seguridad
- **Estado:** Draft
```

- [ ] **Step 2: Añadir RNF de rendimiento, disponibilidad y operación**

```markdown
## Rendimiento

### RNF-PERF-001: Latencia de operaciones de reserva

El sistema debe responder con latencia P95 < 500 ms para operaciones de creación, consulta y cancelación de reservas.

- **Categoría:** Rendimiento
- **Umbral:** P95 < 500 ms; P99 < 1.5 s.
- **Prioridad:** Must
- **Fuente:** [SRS semilla](../02-SRS.md) RNF-PERF-001
- **Estado:** Draft

---

### RNF-PERF-002: Latencia de búsqueda de disponibilidad

El sistema debe calcular y mostrar las franjas disponibles con latencia P95 < 800 ms.

- **Categoría:** Rendimiento
- **Umbral:** P95 < 800 ms; P99 < 2 s.
- **Prioridad:** Must
- **Fuente:** [SRS semilla](../02-SRS.md) RNF-PERF-002
- **Estado:** Draft

---

### RNF-PERF-003: Concurrencia de reservas

El sistema debe manejar al menos 50 solicitudes de reserva simultáneas por organización sin degradación significativa.

- **Categoría:** Rendimiento
- **Umbral:** 50 solicitudes concurrentes sin superar P95 de 1 s.
- **Prioridad:** Should
- **Fuente:** Atributo de calidad definido para MVP
- **Estado:** Draft

---

## Disponibilidad

### RNF-AVA-001: Disponibilidad del servicio

El sistema debe mantener una disponibilidad del 99.9 % medida mensualmente, excluyendo ventanas de mantenimiento programado.

- **Categoría:** Disponibilidad
- **Umbral:** 99.9 % uptime mensual.
- **Prioridad:** Must
- **Fuente:** [SRS semilla](../02-SRS.md) RNF-AVA-001
- **Estado:** Draft

---

### RNF-AVA-002: Recuperación ante fallos

El sistema debe recuperarse de un fallo y restaurar el servicio completo en menos de 15 minutos.

- **Categoría:** Disponibilidad
- **Umbral:** MTTR < 15 minutos.
- **Prioridad:** Must
- **Fuente:** [SRS semilla](../02-SRS.md) RNF-AVA-002
- **Estado:** Draft

---

### RNF-AVA-003: Persistencia de datos

El sistema debe garantizar que ninguna reserva confirmada se pierda ante un fallo del servidor, con RPO < 1 minuto.

- **Categoría:** Disponibilidad
- **Umbral:** RPO < 1 minuto.
- **Prioridad:** Must
- **Fuente:** Atributo de calidad definido para MVP
- **Estado:** Draft

---

## Observabilidad

### RNF-OBS-001: Log centralizado

El sistema debe registrar eventos operativos en un sistema de logs centralizado con niveles (INFO, WARN, ERROR) y contexto suficiente para depuración.

- **Categoría:** Observabilidad
- **Umbral:** 100 % de los eventos de reserva, autenticación y error registrados con contexto.
- **Prioridad:** Should
- **Fuente:** [SRS semilla](../02-SRS.md) RNF-OBS-001
- **Estado:** Draft

---

### RNF-OBS-002: Métricas de salud

El sistema debe exponer métricas de salud (CPU, memoria, tasa de peticiones, latencia, tasa de error) en un endpoint `/health`.

- **Categoría:** Observabilidad
- **Umbral:** Endpoint /health disponible; métricas actualizadas cada 60 s.
- **Prioridad:** Should
- **Fuente:** Atributo de calidad definido
- **Estado:** Draft

---

### RNF-OBS-003: Alertas automáticas

El sistema debe generar alertas automáticas cuando la tasa de error supere el 1 % o la latencia P95 supere los umbrales definidos.

- **Categoría:** Observabilidad
- **Umbral:** Alerta cuando error rate > 1 % o P95 > umbral.
- **Prioridad:** Could
- **Fuente:** Atributo de calidad definido
- **Estado:** Draft
```

- [ ] **Step 3b: Añadir RNF de escalabilidad**

```markdown
## Escalabilidad

### RNF-ESC-001: Escalabilidad horizontal

El sistema debe diseñarse para permitir escalabilidad horizontal del servicio de API, permitiendo añadir instancias adicionales bajo un balanceador de carga a medida que crece el número de organizaciones.

- **Categoría:** Escalabilidad
- **Umbral:** Capacidad de añadir instancias sin modificar el código de la aplicación.
- **Prioridad:** Should
- **Fuente:** [SRS semilla](../02-SRS.md) RNF-ESC-001
- **Estado:** Draft
```

- [ ] **Step 4: Añadir RNF de usabilidad y mantenibilidad**

```markdown
## Usabilidad

### RNF-USA-001: Interfaz responsive

El sistema debe proporcionar una interfaz usable desde navegadores de escritorio (1920×1080), tabletas (768×1024) y móviles (375×667).

- **Categoría:** Usabilidad
- **Umbral:** 3 breakpoints funcionales sin pérdida de contenido.
- **Prioridad:** Must
- **Fuente:** [SRS semilla](../02-SRS.md) RNF-USA-001
- **Estado:** Draft

---

### RNF-USA-002: Flujo de reserva en pocos pasos

El sistema debe permitir completar una reserva en 3 pasos o menos desde la selección de sucursal.

- **Categoría:** Usabilidad
- **Umbral:** Máximo 3 pasos; tiempo medio < 60 segundos.
- **Prioridad:** Should
- **Fuente:** [SRS semilla](../02-SRS.md) RNF-USA-002
- **Estado:** Draft

---

### RNF-USA-003: Feedback visual inmediato

El sistema debe proporcionar feedback visual inmediato (loading states, confirmaciones, errores) para cada acción del usuario.

- **Categoría:** Usabilidad
- **Umbral:** 100 % de las acciones con feedback visual < 200 ms.
- **Prioridad:** Should
- **Fuente:** Principios de UX
- **Estado:** Draft

---

### RNF-USA-004: Accesibilidad básica

El sistema debe cumplir con nivel AA de WCAG 2.1 en las pantallas principales de reserva y agenda.

- **Categoría:** Usabilidad
- **Umbral:** WCAG 2.1 AA en flujo de reserva y agenda.
- **Prioridad:** Could
- **Fuente:** Buenas prácticas de accesibilidad
- **Estado:** Draft

---

## Mantenibilidad

### RNF-MAN-001: Documentación de API

El sistema debe exponer la documentación completa de la API REST mediante OpenAPI 3.0, accesible en `/api/docs`.

- **Categoría:** Mantenibilidad
- **Umbral:** OpenAPI 3.0 con todos los endpoints documentados.
- **Prioridad:** Must
- **Fuente:** [SRS semilla](../02-SRS.md) RNF-MAN-001
- **Estado:** Draft

---

### RNF-MAN-002: Despliegue rápido en staging

El sistema debe permitir desplegar cambios en el entorno de staging en menos de 30 minutos desde el merge a la rama principal.

- **Categoría:** Mantenibilidad
- **Umbral:** < 30 minutos desde merge a staging.
- **Prioridad:** Should
- **Fuente:** [SRS semilla](../02-SRS.md) RNF-MAN-002
- **Estado:** Draft

---

### RNF-MAN-003: Cobertura de pruebas

El sistema debe mantener una cobertura de pruebas unitarias y de integración > 80 % en los módulos críticos (reservas, disponibilidad, notificaciones).

- **Categoría:** Mantenibilidad
- **Umbral:** > 80 % de cobertura en módulos críticos.
- **Prioridad:** Should
- **Fuente:** [SRS semilla](../02-SRS.md) RNF-TEST-001
- **Estado:** Draft

---

### RNF-MAN-004: Estándar de código

El sistema debe mantener un estilo de código consistente mediante linter y formateador automatizados en el pipeline CI.

- **Categoría:** Mantenibilidad
- **Umbral:** 0 errores de linter en CI; formato automático en cada commit.
- **Prioridad:** Should
- **Fuente:** Buenas prácticas de ingeniería
- **Estado:** Draft
```

- [ ] **Step 4: Verificar RNF escritos**

Run:

```bash
grep -c "^### RNF-" "Moira-Reservations-Docs/02-requirements-engineering/02-Non-Functional-Requirements.md"
```

Expected: al menos 22 RNF (SEC-001 a SEC-005, PERF-001 a PERF-003, AVA-001 a AVA-003, OBS-001 a OBS-003, USA-001 a USA-004, MAN-001 a MAN-004, ESC-001).

---

### Task 4: Especificación de casos de uso

**Files:**
- Create: `Moira-Reservations-Docs/02-requirements-engineering/03-Use-Cases.md`

- [ ] **Step 1: Escribir CU-001 a CU-003 (Reservas)**

```markdown
# Use Cases

| Campo | Valor |
| --- | --- |
| Versión | 0.1 |
| Estado | Draft |
| Propietario | Product Owner |
| Clasificación | Internal |
| Confidencialidad | Uso interno del proyecto |
| Revisores | Product Owner, Architecture Review |
| Aprobadores | Product Owner, Architecture Review Board |
| Última actualización | 2026-07-25 |
| Próxima revisión | Al cierre de la fase |

---

### CU-001: Crear reserva con profesional seleccionado

- **Actores:** Primario: Cliente; Secundarios: Recepcionista
- **Precondiciones:**
  1. La organización, sucursal, servicio y profesional existen y están activos.
  2. El cliente está registrado o se le permite reservar como invitado.
  3. Existe al menos una franja disponible para el servicio y profesional seleccionados.
- **Postcondiciones:**
  1. La reserva queda registrada con estado "confirmada".
  2. La franja ocupada deja de mostrarse como disponible.
  3. El cliente recibe notificación de confirmación.
  4. La reserva aparece en la agenda del profesional.

- **Flujo principal:**
  1. El actor selecciona la organización y sucursal.
  2. El actor selecciona el servicio deseado.
  3. El actor selecciona un profesional que ofrece el servicio.
  4. El sistema muestra las franjas disponibles del profesional para el servicio.
  5. El actor selecciona una franja horaria.
  6. El actor confirma la reserva.
  7. El sistema valida disponibilidad actual (evitando condiciones de carrera).
  8. El sistema registra la reserva con estado "confirmada".
  9. El sistema envía notificación de confirmación al cliente.
  10. El sistema actualiza la agenda del profesional.

- **Flujos alternativos:**
  - FA-001.1: El actor no selecciona profesional (asignación automática). → Ir a CU-002.
  - FA-001.2: El cliente no está registrado y la organización permite invitados. → El sistema solicita datos mínimos (nombre, teléfono) antes del paso 6.

- **Excepciones:**
  - E-001.1: La franja ya no está disponible al confirmar. → El sistema informa al actor y muestra las franjas aún disponibles.
  - E-001.2: El servicio no está disponible en la sucursal seleccionada. → El sistema informa al actor.
  - E-001.3: El profesional no ofrece el servicio seleccionado. → El sistema filtra profesionales compatibles antes del paso 3.

- **Reglas de negocio:** BR-003, BR-004, BR-005
- **Requisitos funcionales:** RF-017, RF-018, RF-023, RF-035
```

```markdown
### CU-002: Crear reserva con asignación automática

- **Actores:** Primario: Cliente; Secundarios: Recepcionista
- **Precondiciones:**
  1. La organización, sucursal y servicio existen y están activos.
  2. Existe al menos un profesional con la especialidad requerida y franja disponible.
- **Postcondiciones:** (las mismas que CU-001)

- **Flujo principal:**
  1. El actor selecciona organización y sucursal.
  2. El actor selecciona el servicio.
  3. El actor activa "asignación automática".
  4. El sistema muestra las franjas disponibles (sin requerir selección de profesional).
  5. El actor selecciona una franja.
  6. El actor confirma la reserva.
  7. El sistema asigna el primer profesional disponible con la especialidad requerida.
  8. El sistema registra la reserva y envía notificaciones.

- **Excepciones:**
  - E-002.1: Ningún profesional disponible en la franja seleccionada. → El sistema muestra mensaje y sugiere franjas alternativas.
  - E-002.2: La franja ya no está disponible. → Similar a E-001.1.

- **Reglas de negocio:** BR-003, BR-004
- **Requisitos funcionales:** RF-017, RF-024
```

```markdown
### CU-003: Reprogramar reserva

- **Actores:** Primario: Cliente; Secundarios: Recepcionista
- **Precondiciones:**
  1. Existe una reserva confirmada y futura.
  2. La reprogramación se solicita dentro del plazo permitido por la organización.
- **Postcondiciones:**
  1. La reserva se actualiza con la nueva fecha, hora o profesional.
  2. El historial de cambios registra la modificación.
  3. El cliente recibe notificación de la reprogramación.
  4. La franja anterior se libera.

- **Flujo principal:**
  1. El actor selecciona la reserva a reprogramar.
  2. El actor selecciona nueva fecha/hora o nuevo profesional.
  3. El sistema valida disponibilidad de la nueva franja.
  4. El sistema actualiza la reserva.
  5. El sistema libera la franja anterior.
  6. El sistema notifica al cliente.

- **Flujos alternativos:**
  - FA-003.1: El actor solo cambia el profesional, manteniendo fecha y hora. → El sistema verifica disponibilidad del nuevo profesional en esa franja.

- **Excepciones:**
  - E-003.1: Fuera del plazo de reprogramación. → El sistema informa la política de la organización.
  - E-003.2: La nueva franja no está disponible. → El sistema muestra alternativas.

- **Reglas de negocio:** BR-006
- **Requisitos funcionales:** RF-025, RF-036
```

- [ ] **Step 2: Escribir CU-004 a CU-006 (Cancelación, disponibilidad, notificaciones)**

```markdown
### CU-004: Cancelar reserva

- **Actores:** Primario: Cliente; Secundarios: Recepcionista
- **Precondiciones:**
  1. Existe una reserva confirmada y futura.
  2. La cancelación se solicita dentro del plazo permitido por la organización (si aplica).
- **Postcondiciones:**
  1. La reserva cambia a estado "cancelada".
  2. La franja se libera.
  3. Si hay lista de espera, se activa el flujo de reasignación (CU-008).
  4. El cliente recibe notificación de cancelación.

- **Flujo principal:**
  1. El actor selecciona la reserva a cancelar.
  2. El sistema verifica el plazo de cancelación.
  3. El actor confirma la cancelación.
  4. El sistema cambia el estado de la reserva a "cancelada" y registra el motivo.
  5. El sistema libera la franja.
  6. El sistema notifica al cliente.
  7. Si existe lista de espera para esa franja/servicio, se activa CU-008.

- **Excepciones:**
  - E-004.1: Cancelación fuera de plazo. → El sistema informa que no es posible cancelar.

- **Reglas de negocio:** BR-006, BR-007, BR-008
- **Requisitos funcionales:** RF-026, RF-027, RF-037, RF-041
```

```markdown
### CU-005: Gestionar disponibilidad de profesional

- **Actores:** Primario: Profesional, Administrador
- **Precondiciones:**
  1. El profesional existe y está activo.
  2. La sucursal tiene horario general configurado.
- **Postcondiciones:**
  1. La disponibilidad semanal del profesional queda actualizada.
  2. Las franjas bloqueadas no se ofrecen en reservas futuras.
  3. Si hay reservas en franjas ahora bloqueadas, se notifica al administrador.

- **Flujo principal:**
  1. El actor selecciona el profesional y la sucursal.
  2. El sistema muestra la disponibilidad semanal actual.
  3. El actor edita las franjas por día de la semana.
  4. El actor añade bloqueos temporales (vacaciones, permisos).
  5. El sistema valida los cambios (sin solapamientos).
  6. El actor guarda los cambios.
  7. El sistema actualiza la disponibilidad.

- **Excepciones:**
  - E-005.1: Solapamiento de horarios. → El sistema alerta y no guarda hasta resolver.

- **Reglas de negocio:** BR-003, BR-005
- **Requisitos funcionales:** RF-013, RF-014, RF-015, RF-021
```

```markdown
### CU-006: Configurar notificaciones

- **Actores:** Primario: Administrador de organización
- **Precondiciones:**
  1. La organización existe y está activa.
- **Postcondiciones:**
  1. Los canales de notificación están configurados.
  2. Las plantillas están definidas.
  3. Las preferencias de envío están activas.

- **Flujo principal:**
  1. El administrador accede a la configuración de notificaciones.
  2. El administrador habilita/deshabilita canales (WhatsApp, Telegram, correo, SMS).
  3. El administrador configura las credenciales de cada canal.
  4. El administrador define plantillas para cada evento.
  5. El administrador configura el intervalo de recordatorio.
  6. El sistema guarda la configuración.

- **Reglas de negocio:** BR-010
- **Requisitos funcionales:** RF-011, RF-046, RF-055
```

- [ ] **Step 3: Escribir CU-007 a CU-010 (Lista de espera, clientes, autenticación, reportes)**

```markdown
### CU-007: Gestionar clientes

- **Actores:** Primario: Recepcionista; Secundarios: Cliente
- **Precondiciones:** La organización existe.
- **Postcondiciones:** El cliente queda registrado con sus datos y preferencias.

- **Flujo principal:**
  1. El recepcionista accede al módulo de clientes.
  2. El recepcionista crea un nuevo cliente o busca uno existente.
  3. El recepcionista ingresa o edita datos del cliente.
  4. El recepcionista selecciona canales de notificación preferidos.
  5. El sistema guarda los datos.

- **Flujo alternativo:**
  - FA-007.1: El cliente se autoregistra. → El cliente completa formulario de registro; el sistema crea el cliente con estado "pendiente de verificación".

- **Reglas de negocio:** BR-010
- **Requisitos funcionales:** RF-007, RF-008, RF-047
```

```markdown
### CU-008: Administrar lista de espera y reasignación

- **Actores:** Primario: Sistema; Secundarios: Recepcionista, Cliente
- **Precondiciones:**
  1. Existe lista de espera activa para un servicio/franja.
  2. Se ha liberado una franja (por cancelación o creación de hueco).
- **Postcondiciones:**
  1. La franja se reasigna a un cliente (o se descarta).
  2. La lista de espera se actualiza.

- **Flujo principal:**
  1. El sistema detecta una franja liberada con lista de espera.
  2. El sistema notifica al recepcionista.
  3. El recepcionista revisa los candidatos de la lista de espera (ordenados por prioridad).
  4. El recepcionista selecciona un candidato.
  5. El sistema envía al cliente una oferta de reasignación con plazo de confirmación.
  6. El cliente confirma.
  7. El sistema crea la reserva y actualiza la lista de espera.

- **Flujos alternativos:**
  - FA-008.1: El cliente rechaza la oferta o no responde en el plazo. → El sistema ofrece al siguiente candidato.
  - FA-008.2: El recepcionista asigna manualmente sin esperar confirmación. → La reserva se crea directamente.

- **Excepciones:**
  - E-008.1: La lista de espera está vacía. → La franja se marca como disponible.

- **Reglas de negocio:** BR-008, BR-009, BR-010
- **Requisitos funcionales:** RF-039, RF-040, RF-041, RF-042, RF-043, RF-044, RF-045
```

```markdown
### CU-009: Autenticar usuario en el sistema

- **Actores:** Primario: Todos los usuarios del sistema
- **Precondiciones:** El usuario existe y está activo.
- **Postcondiciones:** El usuario obtiene una sesión activa con sus permisos asociados.

- **Flujo principal:**
  1. El usuario ingresa sus credenciales (correo y contraseña).
  2. El sistema valida las credenciales.
  3. El sistema crea una sesión y devuelve un token de acceso.
  4. El usuario accede a las funcionalidades según su rol.

- **Excepciones:**
  - E-009.1: Credenciales incorrectas. → El sistema informa error y registra el intento fallido.
  - E-009.2: Cuenta bloqueada por múltiples intentos fallidos. → El sistema informa y ofrece recuperación.

- **Requisitos funcionales:** RF-056, RF-060, RF-061, RF-064
```

```markdown
### CU-010: Visualizar reportes y estadísticas

- **Actores:** Primario: Administrador de organización
- **Precondiciones:** Existen reservas registradas en el período consultado.
- **Postcondiciones:** El administrador obtiene los datos solicitados.

- **Flujo principal:**
  1. El administrador accede al panel de reportes.
  2. Selecciona el tipo de reporte (ocupación, cancelaciones, no-shows).
  3. Selecciona el período y filtros (sucursal, profesional, servicio).
  4. El sistema muestra los datos en tabla y gráficos.
  5. El administrador puede exportar a CSV o PDF.

- **Reglas de negocio:** Ninguna directa
- **Requisitos funcionales:** RF-066, RF-067, RF-068, RF-069, RF-070, RF-071, RF-072, RF-073, RF-074, RF-075
```

- [ ] **Step 4: Verificar CU escritos**

Run:

```bash
grep -c "^### CU-" "Moira-Reservations-Docs/02-requirements-engineering/03-Use-Cases.md"
```

Expected: al menos 10 CU (CU-001 a CU-010).

---

### Task 5: Historias de usuario con criterios GWT

**Files:**
- Create: `Moira-Reservations-Docs/02-requirements-engineering/04-User-Stories.md`

- [ ] **Step 1: Escribir HU-001 a HU-005**

```markdown
# User Stories

| Campo | Valor |
| --- | --- |
| Versión | 0.1 |
| Estado | Draft |
| Propietario | Product Owner |
| Clasificación | Internal |
| Confidencialidad | Uso interno del proyecto |
| Revisores | Product Owner, Architecture Review |
| Aprobadores | Product Owner, Architecture Review Board |
| Última actualización | 2026-07-25 |
| Próxima revisión | Al cierre de la fase |

---

### HU-001: Registrar organización

**Como** superadministrador **quiero** registrar una nueva organización con sus datos básicos **para** que pueda operar de forma independiente en la plataforma.

**Criterios de aceptación (GWT):**

**Escenario 1:** Registro exitoso de organización
- Given que soy un superadministrador autenticado
- When completo el formulario de registro con nombre, NIF, dirección y datos de contacto válidos
- Then el sistema crea la organización
- And me redirige a la página de la organización
- And se envía un correo de bienvenida al administrador designado

**Escenario 2:** Datos obligatorios incompletos
- Given que soy un superadministrador autenticado
- When intento registrar una organización sin completar el nombre
- Then el sistema muestra un error indicando que el nombre es obligatorio
- And la organización no se crea

- **Caso de uso:** Transversal (gestión de dominio, aplica a CU-005, CU-006, CU-007, CU-009)
- **Prioridad:** Must
- **Talla:** S
```

```markdown
### HU-002: Gestionar profesionales y especialidades

**Como** administrador de organización **quiero** definir profesionales con sus especialidades **para** que las reservas se asignen solo a quienes pueden prestar cada servicio.

**Criterios de aceptación (GWT):**

**Escenario 1:** Crear profesional con especialidades
- Given que soy administrador de una organización con servicios definidos
- When creo un profesional con nombre, datos de contacto y selecciono sus especialidades
- Then el profesional queda registrado
- And queda asociado a las especialidades seleccionadas
- And aparece disponible para los servicios correspondientes

**Escenario 2:** Editar especialidades de un profesional
- Given que existe un profesional con especialidades asignadas
- When edito sus especialidades añadiendo o removiendo
- Then el sistema actualiza las especialidades
- And las reservas futuras respetan las nuevas competencias

- **Caso de uso:** CU-005
- **Prioridad:** Must
- **Talla:** M
```

```markdown
### HU-003: Reservar turno seleccionando profesional

**Como** cliente **quiero** reservar un turno con un profesional específico **para** asegurarme de ser atendido por quien prefiero.

**Criterios de aceptación (GWT):**

**Escenario 1:** Reserva exitosa con profesional seleccionado
- Given que soy un cliente con datos de contacto registrados
- When selecciono una sucursal, un servicio y un profesional específico
- And selecciono una franja disponible
- And confirmo la reserva
- Then el sistema registra la reserva
- And me envía una confirmación por mi canal preferido
- And la franja deja de mostrarse como disponible

**Escenario 2:** Profesional no disponible en la franja
- Given que seleccioné un profesional y un servicio
- When la franja deseada no está disponible para ese profesional
- Then el sistema muestra las franjas alternativas disponibles
- And no permite confirmar la reserva en la franja ocupada

- **Caso de uso:** CU-001
- **Prioridad:** Must
- **Talla:** M
```

```markdown
### HU-004: Reservar con asignación automática

**Como** cliente **quiero** reservar un turno sin elegir profesional **para** que el sistema asigne al primero disponible.

**Criterios de aceptación (GWT):**

**Escenario 1:** Reserva con asignación automática exitosa
- Given que soy un cliente
- When selecciono sucursal y servicio
- And activo la opción "asignación automática"
- And selecciono una franja disponible
- And confirmo la reserva
- Then el sistema asigna un profesional disponible con la especialidad requerida
- And registra la reserva
- And me envía confirmación con el nombre del profesional asignado

**Escenario 2:** Ningún profesional disponible
- Given que seleccioné un servicio con asignación automática
- When no hay profesionales disponibles en la franja seleccionada
- Then el sistema muestra un mensaje indicando la falta de disponibilidad
- And sugiere franjas alternativas

- **Caso de uso:** CU-002
- **Prioridad:** Should
- **Talla:** S
```

```markdown
### HU-005: Reprogramar reserva

**Como** cliente **quiero** reprogramar mi reserva a otra fecha u horario **para** ajustarme a cambios de último momento.

**Criterios de aceptación (GWT):**

**Escenario 1:** Reprogramación exitosa
- Given que tengo una reserva confirmada para una fecha futura
- When solicito reprogramar dentro del plazo permitido
- And selecciono una nueva fecha y hora disponible
- And confirmo el cambio
- Then el sistema actualiza la reserva
- And me envía notificación con los nuevos detalles
- And la franja anterior se libera

**Escenario 2:** Reprogramación fuera de plazo
- Given que tengo una reserva confirmada
- When intento reprogramar fuera del plazo permitido por la organización
- Then el sistema muestra un mensaje indicando que no es posible reprogramar
- And sugiere contactar al establecimiento

- **Caso de uso:** CU-003
- **Prioridad:** Must
- **Talla:** M
```

- [ ] **Step 2: Escribir HU-006 a HU-010**

```markdown
### HU-006: Cancelar reserva

**Como** cliente **quiero** cancelar mi reserva **para** liberar el turno si no podré asistir.

**Criterios de aceptación (GWT):**

**Escenario 1:** Cancelación exitosa dentro del plazo
- Given que tengo una reserva confirmada futura
- When cancelo la reserva dentro del plazo permitido
- Then el sistema cambia el estado a "cancelada"
- And la franja se libera
- And recibo una notificación de cancelación

**Escenario 2:** Cancelación fuera de plazo
- Given que tengo una reserva confirmada futura
- When intento cancelar fuera del plazo permitido
- Then el sistema muestra un mensaje indicando que no es posible cancelar
- And sugiere contactar al establecimiento

- **Caso de uso:** CU-004
- **Prioridad:** Must
- **Talla:** S
```

```markdown
### HU-007: Gestionar mi disponibilidad como profesional

**Como** profesional **quiero** gestionar mi disponibilidad y bloquear días u horas **para** evitar que me asignen reservas cuando no estoy disponible.

**Criterios de aceptación (GWT):**

**Escenario 1:** Bloquear un día completo
- Given que soy un profesional autenticado
- When selecciono un día específico y lo marco como no disponible
- Then el sistema bloquea todas las franjas de ese día
- And no se ofrecen reservas para ese día

**Escenario 2:** Bloquear una franja específica
- Given que soy un profesional autenticado
- When selecciono una franja horaria específica y la bloqueo
- Then el sistema bloquea solo esa franja
- And el resto del horario permanece disponible

- **Caso de uso:** CU-005
- **Prioridad:** Must
- **Talla:** S
```

```markdown
### HU-008: Ver agenda diaria

**Como** recepcionista **quiero** ver la agenda diaria de cada profesional **para** gestionar las reservas y evitar conflictos.

**Criterios de aceptación (GWT):**

**Escenario 1:** Visualizar agenda del día
- Given que soy un recepcionista autenticado
- When selecciono un profesional y una fecha
- Then el sistema muestra todas las reservas del día ordenadas por hora
- And muestra los bloqueos y franjas libres
- And puedo distinguir visualmente cada estado (confirmada, cancelada, no-show)

**Escenario 2:** Filtrar por sucursal
- Given que soy un recepcionista con acceso a varias sucursales
- When selecciono una sucursal específica
- Then el sistema muestra solo los profesionales de esa sucursal

- **Caso de uso:** CU-001, CU-005
- **Prioridad:** Must
- **Talla:** M
```

```markdown
### HU-009: Recibir recordatorio de turno

**Como** cliente **quiero** recibir un recordatorio antes de mi turno **para** no olvidar mi reserva y reducir ausencias.

**Criterios de aceptación (GWT):**

**Escenario 1:** Recordatorio enviado exitosamente
- Given que tengo una reserva confirmada para una fecha futura
- When se cumple el intervalo de recordatorio configurado (ej. 24 horas antes)
- Then el sistema envía un recordatorio por mi canal preferido
- And el registro de notificaciones muestra el estado "entregada"

**Escenario 2:** Canal no disponible
- Given que tengo una reserva confirmada
- When el canal preferido no está disponible (ej. servicio caído)
- Then el sistema registra la notificación como "fallida"
- And reintenta según la política configurada

- **Caso de uso:** CU-006
- **Prioridad:** Must
- **Talla:** S
```

```markdown
### HU-010: Activar lista de espera tras cancelación

**Como** administrador **quiero** que una cancelación active automáticamente la lista de espera **para** recuperar la franja y mejorar la ocupación.

**Criterios de aceptación (GWT):**

**Escenario 1:** Lista de espera activa con candidatos
- Given que existe una lista de espera para un servicio y franja específicos
- When se cancela una reserva que libera esa franja
- Then el sistema notifica al recepcionista
- And presenta los candidatos ordenados por antigüedad
- And al confirmar, el sistema ofrece la franja al primer candidato

**Escenario 2:** Lista de espera vacía
- Given que no hay clientes en lista de espera para la franja liberada
- When se cancela una reserva
- Then la franja se marca como disponible sin notificar al recepcionista

- **Caso de uso:** CU-008
- **Prioridad:** Should
- **Talla:** M
```

- [ ] **Step 3: Verificar HU escritas**

Run:

```bash
grep -c "^### HU-" "Moira-Reservations-Docs/02-requirements-engineering/04-User-Stories.md"
```

Expected: al menos 10 HU.

---

### Task 6: Matriz de trazabilidad (RTM)

**Files:**
- Create: `Moira-Reservations-Docs/02-requirements-engineering/05-Traceability-Matrix.md`

- [ ] **Step 1: Escribir la RTM con todas las tablas de trazabilidad**

```markdown
# Requirements Traceability Matrix (RTM)

| Campo | Valor |
| --- | --- |
| Versión | 0.1 |
| Estado | Draft |
| Propietario | Product Owner |
| Clasificación | Internal |
| Confidencialidad | Uso interno del proyecto |
| Revisores | Product Owner, Architecture Review |
| Aprobadores | Product Owner, Architecture Review Board |
| Última actualización | 2026-07-25 |
| Próxima revisión | Al cierre de la fase |

## Propósito

Verificar que cada regla de negocio, requisito funcional, caso de uso e historia de usuario tiene trazabilidad completa. Esta matriz es la fuente de verdad de las relaciones entre artefactos.

## Convenciones

- `✓` = trazabilidad establecida
- `—` = no aplica (justificado)
- `?` = trazabilidad pendiente de verificar

---

## 1. Reglas de negocio → Requisitos funcionales

| Regla | RF asociados |
| --- | --- |
| BR-001 (Aislamiento) | RF-001, RF-002, RF-009, RF-010, RF-057, RF-058, RF-062 |
| BR-002 (Sucursal) | RF-002, RF-006, RF-063 |
| BR-003 (Disponibilidad) | RF-004, RF-005, RF-014, RF-017, RF-018, RF-023, RF-024 |
| BR-004 (Conflicto) | RF-017, RF-018, RF-023, RF-028, RF-034 |
| BR-005 (Duración) | RF-003, RF-013, RF-016, RF-018, RF-019, RF-020, RF-023 |
| BR-006 (Cambio) | RF-012, RF-025, RF-026 |
| BR-007 (Cancelación) | RF-012, RF-026, RF-027, RF-030 |
| BR-008 (Espera) | RF-039, RF-041, RF-073 |
| BR-009 (Confirmación) | RF-040, RF-042, RF-043, RF-044, RF-073 |
| BR-010 (Notificación) | RF-011, RF-035, RF-036, RF-037, RF-038, RF-042, RF-046, RF-047, RF-050, RF-051, RF-055 |

---

## 2. Requisitos funcionales → Casos de uso

| RF | CU asociados |
| --- | --- |
| RF-001 a RF-012 (Gestión de dominio) | CU-005, CU-006, CU-007, CU-009 |
| RF-013 a RF-022 (Horarios) | CU-005 |
| RF-023 a RF-038 (Reservas) | CU-001, CU-002, CU-003, CU-004 |
| RF-039 a RF-045 (Lista de espera) | CU-008 |
| RF-046 a RF-055 (Notificaciones) | CU-006 |
| RF-056 a RF-065 (Seguridad) | CU-009 |
| RF-066 a RF-075 (Reportes) | CU-010 |

### Mapeo detallado RF → CU

| RF | CU |
| --- | --- |
| RF-017, RF-018, RF-023, RF-035 | CU-001 |
| RF-017, RF-024 | CU-002 |
| RF-025, RF-036 | CU-003 |
| RF-026, RF-027, RF-037, RF-041 | CU-004 |
| RF-013, RF-014, RF-015, RF-021 | CU-005 |
| RF-011, RF-046, RF-055 | CU-006 |
| RF-007, RF-008, RF-047 | CU-007 |
| RF-039, RF-040, RF-041, RF-042, RF-043, RF-044, RF-045 | CU-008 |
| RF-056, RF-060, RF-061, RF-064 | CU-009 |
| RF-066, RF-067, RF-068, RF-069, RF-070, RF-071, RF-072, RF-073, RF-074, RF-075 | CU-010 |

---

## 3. Casos de uso → Historias de usuario

| CU | HU asociadas |
| --- | --- |
| CU-001 (Crear reserva con selección) | HU-003, HU-008 |
| CU-002 (Crear reserva automática) | HU-004 |
| CU-003 (Reprogramar) | HU-005 |
| CU-004 (Cancelar) | HU-006, HU-010 |
| CU-005 (Gestionar disponibilidad) | HU-002, HU-007, HU-008 |
| CU-006 (Configurar notificaciones) | HU-009 |
| CU-007 (Gestionar clientes) | HU-001 (contexto de administración) |
| CU-008 (Lista de espera) | HU-010 |
| CU-009 (Autenticar) | (transversal, aplica a todas las HU) |
| CU-010 (Reportes) | (pendiente de HU específica en iteración futura) |

---

## 4. Requisitos no funcionales → Atributos de calidad

| RNF | Atributo de calidad |
| --- | --- |
| RNF-SEC-001 a RNF-SEC-005 | Seguridad |
| RNF-PERF-001 a RNF-PERF-003 | Rendimiento |
| RNF-AVA-001 a RNF-AVA-003 | Disponibilidad |
| RNF-OBS-001 a RNF-OBS-003 | Observabilidad |
| RNF-USA-001 a RNF-USA-004 | Usabilidad |
| RNF-MAN-001 a RNF-MAN-004 | Mantenibilidad |

---

## 5. Cobertura

| Tipo | Total | Trazados | % |
| --- | --- | --- | --- |
| Reglas de negocio (BR) | 10 | 10 | 100 % |
| Requisitos funcionales (RF) | 75 | 75 | 100 % |
| Casos de uso (CU) | 10 | 10 | 100 % |
| Historias de usuario (HU) | 10 | 10 | 100 % |
| Requisitos no funcionales (RNF) | 23 | 23 | 100 % |

## Observaciones

- CU-009 (Autenticación) es transversal y aplica a todas las historias de usuario. No requiere una HU específica.
- CU-010 (Reportes) tendrá HU asociadas en una iteración posterior priorizada como Could.
- Los RNF son transversales y se validan mediante pruebas de sistema, no mediante HU individuales.
```

- [ ] **Step 2: Verificar cobertura RTM**

Run:

```bash
grep -c "| BR-" "Moira-Reservations-Docs/02-requirements-engineering/05-Traceability-Matrix.md"
```

Expected: 10 reglas listadas.

---

### Task 7: Actualizar README raíz y extender el validador

**Files:**
- Modify: `Moira-Reservations-Docs/README.md`
- Modify: `Moira-Reservations-Docs/00-governance/validate-documentation.ps1`

- [ ] **Step 1: Añadir enlace a la Fase 2 en el README raíz**

Añadir en la sección `Fases` del `Moira-Reservations-Docs/README.md`:

```markdown
- [02 — Requirements Engineering](02-requirements-engineering/README.md)
```

Junto a la entrada existente `01 — Business Discovery & Analysis...`.

- [ ] **Step 2: Extender el script de validación para la Fase 2**

Añadir al `validate-documentation.ps1` las siguientes comprobaciones:

```powershell
# Requisitos Requirements Engineering
$reqDir = "Moira-Reservations-Docs/02-requirements-engineering"
Assert-Contains (Get-ChildItem "$reqDir/*.md" | Measure-Object).Count -ge 7 "Al menos 7 documentos en Requirements Engineering"
Assert-Contains (Select-String -Path "$reqDir/01-Functional-Requirements.md" -Pattern "^### RF-" -AllMatches).Matches.Count -ge 75 "Al menos 75 RF"
Assert-Contains (Select-String -Path "$reqDir/02-Non-Functional-Requirements.md" -Pattern "^### RNF-" -AllMatches).Matches.Count -ge 20 "Al menos 20 RNF"
Assert-Contains (Select-String -Path "$reqDir/03-Use-Cases.md" -Pattern "^### CU-" -AllMatches).Matches.Count -ge 8 "Al menos 8 CU con flujo principal"
Assert-Contains (Select-String -Path "$reqDir/04-User-Stories.md" -Pattern "^### HU-" -AllMatches).Matches.Count -ge 8 "Al menos 8 HU con criterios GWT"
Assert-Contains (Select-String -Path "$reqDir/05-Traceability-Matrix.md" -Pattern "BR-\d{3}" -AllMatches).Matches.Count -ge 10 "BR-xxx referenciadas en RTM"
Assert-Contains (Select-String -Path "$reqDir/05-Traceability-Matrix.md" -Pattern "RF-\d{3}" -AllMatches).Matches.Count -ge 60 "RF-xxx referenciados en RTM"
```

- [ ] **Step 3: Ejecutar validación completa**

Run:

```powershell
powershell -ExecutionPolicy Bypass -File "Moira-Reservations-Docs/00-governance/validate-documentation.ps1"
```

Expected: todos los controles emiten `PASS` y el proceso termina con exit code 0.

---

## Verificación final del plan

- La metodología de requisitos cubre redacción, priorización MoSCoW, versionado, deprecación y trazabilidad (Task 1).
- El catálogo RF cubre 75 requisitos en 8 módulos: dominio, horarios, reservas, lista de espera, notificaciones, seguridad, reportes (Task 2).
- El catálogo RNF cubre 19 requisitos en 6 categorías (Task 3).
- Los casos de uso cubren los 10 flujos principales del MVP (Task 4).
- Las historias de usuario cubren 10 historias con criterios GWT (Task 5).
- La RTM conecta BR→RF→CU→HU con cobertura 100 % (Task 6).
- El README raíz y el validador se actualizan para reflejar la nueva fase (Task 7).
- No se incluye SDD, UML, C4, modelo de datos, API, ADR, plan de pruebas ni infraestructura — están fuera del alcance de esta fase.

## Notas de control de versiones

El directorio actual no contiene un repositorio Git. No ejecutar commits ni crear una rama hasta que el usuario inicialice o conecte el repositorio. Cuando exista Git, cada tarea se debe revisar y confirmar por separado antes de un commit con alcance único.
