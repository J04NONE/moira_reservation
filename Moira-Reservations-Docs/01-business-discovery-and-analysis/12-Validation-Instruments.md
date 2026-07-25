# Validation Instruments

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
| Próxima revisión | Tras sesiones de validación |

## Propósito

Proporcionar los instrumentos concretos para ejecutar las sesiones de descubrimiento `EV-PLAN-001` a `EV-PLAN-004`, validar las hipótesis del Lean Canvas (H-001, H-002, H-003) y los supuestos (A-001 a A-010), y documentar el proceso AS-IS antes de iniciar la Fase 2 de Requirements Engineering.

## Estructura del kit

1. **20 preguntas cerradas** — 5 por rol, para validación cuantitativa rápida de hipótesis y supuestos.
2. **Guías de entrevista abierta** — 5 guías, una por actor primario, para descubrimiento cualitativo de pain points y flujos.
3. **Formato de observación AS-IS** — Plantilla estructurada para documentar el proceso actual in-situ.

---

## Parte 1: 20 preguntas cerradas

Cada pregunta está diseñada para respuesta Sí/No o selección múltiple. Están mapeadas a las hipótesis (H-001 a H-003) y supuestos (A-001 a A-010) que necesitan validación.

### Bloque A: Administrador (EV-PLAN-001) — 5 preguntas

| # | Pregunta | Tipo | H/A valida |
|---|----------|------|------------|
| 1 | ¿Gestiona actualmente sus reservas con… (a) Papel/agenda física, (b) WhatsApp, (c) Excel, (d) Software especializado? | Selección múltiple | H-001 |
| 2 | En el último mes, ¿ha tenido casos de **doble reserva** (dos clientes citados a la misma hora con el mismo profesional)? (a) Nunca, (b) 1-2 veces, (c) 3-5 veces, (d) Más de 5 veces | Selección múltiple | H-001 |
| 3 | ¿Cuántos profesionales trabajan en su negocio? (a) Solo yo, (b) 2-3, (c) 4-7, (d) 8 o más | Selección múltiple | A-007 |
| 4 | ¿Su negocio tiene… (a) Una sola sucursal, (b) 2-3 sucursales, (c) 4 o más sucursales? | Selección múltiple | A-010 |
| 5 | ¿Quién gestiona las reservas actualmente? (a) Un recepcionista dedicado, (b) El administrador/propietario, (c) Los propios profesionales, (d) Los clientes reservan solos por WhatsApp | Selección múltiple | A-009 |

### Bloque B: Recepcionista (EV-PLAN-002) — 5 preguntas

| # | Pregunta | Tipo | H/A valida |
|---|----------|------|------------|
| 6 | Aproximadamente, ¿cuántas llamadas o mensajes de WhatsApp recibe al día para consultar disponibilidad? (a) 0-5, (b) 6-15, (c) 16-30, (d) Más de 30 | Selección múltiple | H-001 |
| 7 | Actualmente, ¿cómo gestiona las cancelaciones de último minuto? (a) Las anoto y busco reemplazo llamando, (b) Tengo una lista de espera en papel/whatsapp, (c) No hago nada, se pierde el turno | Selección múltiple | H-003 |
| 8 | ¿Cree que su negocio necesita que diferentes empleados tengan diferentes niveles de acceso al sistema? (a) Sí, es importante, (b) No, todos pueden ver todo, (c) No estoy seguro | Selección múltiple | A-008 |
| 9 | ¿Cuánto tiempo estima que le toma actualmente crear una reserva desde que el cliente contacta hasta que queda agendada? (a) Menos de 1 minuto, (b) 1-3 minutos, (c) 4-7 minutos, (d) Más de 7 minutos | Selección múltiple | H-001 |
| 10 | ¿Tiene acceso a internet en su puesto de trabajo? (a) Sí, siempre, (b) Sí, a veces falla, (c) No | Selección múltiple | A-001 |

### Bloque C: Profesional (EV-PLAN-003) — 5 preguntas

| # | Pregunta | Tipo | H/A valida |
|---|----------|------|------------|
| 11 | ¿Tiene acceso a un **smartphone o computadora** durante su jornada laboral? (a) Siempre tengo mi smartphone, (b) A veces, (c) No tengo | Selección múltiple | A-005 |
| 12 | ¿Le gustaría poder **bloquear días u horas** en los que no quiere recibir reservas (ej. días libres, horario de comida)? (a) Sí, mucho, (b) Me da igual, (c) Prefiero que lo gestione el recepcionista | Selección múltiple | A-005, H-003 |
| 13 | ¿Le notifican con anticipación cuando le asignan una nueva reserva? (a) Sí, siempre, (b) A veces me entero cuando llega el cliente, (c) Nunca | Selección múltiple | H-002 |
| 14 | Entre servicio y servicio, ¿cuánto tiempo muerto tiene en promedio? (a) Casi nada, (b) 5-15 minutos, (c) 15-30 minutos, (d) Más de 30 minutos | Selección múltiple | H-003 |
| 15 | ¿Ha tenido conflictos donde dos reservas caen en el mismo horario? (a) Sí, frecuentemente, (b) Sí, alguna vez, (c) Nunca | Selección múltiple | H-001 |

### Bloque D: Cliente (EV-PLAN-004) — 5 preguntas

| # | Pregunta | Tipo | H/A valida |
|---|----------|------|------------|
| 16 | Actualmente, ¿cómo reserva sus turnos? (a) Llamada telefónica, (b) WhatsApp, (c) Presencial, (d) App/web | Selección múltiple | H-002 |
| 17 | ¿Ha olvidado algún turno en los últimos 3 meses? (a) Sí, más de una vez, (b) Sí, una vez, (c) No, nunca | Selección múltiple | H-002 |
| 18 | ¿Usa regularmente…? (puede seleccionar varias) (a) WhatsApp, (b) Telegram, (c) Correo electrónico, (d) SMS | Selección múltiple | A-002, A-006 |
| 19 | Si recibiera un **recordatorio automático** antes de su turno, ¿preferiría recibirlo por…? (a) WhatsApp, (b) Telegram, (c) Correo, (d) SMS, (e) No quiero recordatorios | Selección múltiple | H-002 |
| 20 | ¿Le gustaría poder **ver disponibilidad y reservar sin llamar** usando su celular? (a) Sí, definitivamente, (b) Tal vez, (c) No, prefiero llamar | Selección múltiple | H-001, H-002 |

---

## Parte 2: Guías de entrevista abierta

Cada entrevista dura 25-35 minutos. El entrevistador debe registrar respuestas textuales y observaciones. Usar la evidencia `EV-xxx` correspondiente para documentar hallazgos.

### 2.1 Superadministrador

**Objetivo:** Validar necesidades de gestión de plataforma multi-organización y políticas globales.

**Preguntas:**

1. Cuénteme sobre su experiencia gestionando plataformas SaaS multi-cliente. ¿Qué es lo más complejo del onboarding de un nuevo cliente?
2. ¿Qué información necesita ver en un dashboard global para saber que todo está funcionando correctamente?
3. ¿Qué políticas le gustaría poder configurar de forma global que apliquen a todas las organizaciones?
4. ¿Cómo maneja actualmente la creación de nuevas cuentas de organización? ¿Qué obstáculos encuentra?
5. ¿Qué tipo de alertas o anomalías le gustaría que el sistema detectara automáticamente?
6. ¿Ha tenido que lidiar con fugas de datos entre clientes? ¿Cómo lo maneja?
7. ¿Qué métricas de uso de plataforma considera más importantes?
8. ¿Hay algo más que considere importante y no le haya preguntado?

### 2.2 Administrador de organización

**Objetivo:** Validar configuración del negocio, gestión de profesionales, servicios y horarios, políticas y reportes.

**Preguntas:**

1. Cuénteme cómo gestiona las reservas hoy. ¿Qué es lo que más le frustra del proceso actual?
2. ¿Cómo define los horarios de su negocio y los asigna a cada profesional? ¿Alguien más participa?
3. ¿Cómo maneja los imprevistos: un profesional que se enferma, un cliente que no viene, un día feriado?
4. ¿Qué información considera indispensable tener en su panel de control diario?
5. ¿Cómo decide qué servicios ofrece, cuánto duran y quién los presta?
6. ¿Ha tenido problemas con clientes que no se presentan? ¿Cómo los maneja?
7. ¿Qué políticas de cancelación aplica hoy? ¿Son efectivas?
8. ¿Cómo gestiona los períodos de alta demanda (ej. fines de semana, diciembre)?
9. ¿Qué tan importante es para usted poder ver reportes de ocupación por profesional?
10. Si pudiera cambiar una sola cosa de cómo gestiona las reservas hoy, ¿qué sería?

### 2.3 Recepcionista

**Objetivo:** Validar el flujo de atención, gestión de agenda, lista de espera y comunicación con clientes y profesionales.

**Preguntas:**

1. Camíneme a través de un día típico. ¿Cómo empieza? ¿Qué sistema usa para gestionar las reservas?
2. ¿Qué es lo que más tiempo le consume durante su jornada?
3. ¿Cómo maneja una llamada de un cliente que quiere reservar? ¿Qué información necesita tener a mano?
4. ¿Qué hace cuando un cliente llama para cancelar? ¿Intenta rellenar ese turno?
5. ¿Cómo se comunica con los profesionales sobre los cambios de agenda? ¿Les avisa de nuevas reservas?
6. ¿Cómo gestiona la lista de espera actualmente? ¿Tiene una lista? ¿Cómo decide a quién llamar?
7. ¿Qué pasa cuando dos clientes quieren la misma hora con el mismo profesional?
8. ¿Cómo maneja a un cliente que llega sin reserva?
9. ¿Qué información del historial del cliente necesita tener visible cuando llama?
10. ¿Qué es lo que más le gustaría que un sistema de reservas hiciera por usted?

### 2.4 Profesional

**Objetivo:** Validar necesidades de autogestión de disponibilidad, visualización de agenda y comunicación de cambios.

**Preguntas:**

1. ¿Cómo sabe qué clientes tiene hoy y a qué horas? ¿Revisa algo específico al llegar?
2. ¿Qué tan seguido le asignan reservas sin que usted se entere hasta último momento?
3. ¿Cómo maneja los días que no puede ir a trabajar? ¿Cómo se lo comunica al recepcionista?
4. Si pudiera marcar su disponibilidad desde su celular, ¿lo haría? ¿Qué días o franjas le gustaría controlar?
5. ¿Qué información del cliente le gustaría tener antes de que llegue (nombre, servicio, notas)?
6. ¿Ha tenido problemas donde dos clientes están agendados a la misma hora con usted?
7. ¿Cómo maneja los tiempos entre servicios? ¿Le gustaría tener un descanso programado?
8. ¿Qué tan importante es para usted recibir una notificación cuando le asignan o cancelan una reserva?
9. ¿Usa alguna app para gestionar su tiempo actualmente? ¿Cuál?
10. ¿Qué haría su día más fácil en términos de gestión de agenda?

### 2.5 Cliente

**Objetivo:** Validar experiencia de reserva, canales de comunicación, recordatorios y preferencias de cancelación.

**Preguntas:**

1. Cuénteme cómo fue la última vez que reservó un turno. ¿Cómo lo hizo? ¿Fue fácil?
2. ¿Qué es lo que más le molesta del proceso de reserva actual?
3. ¿Prefiere elegir usted al profesional que lo atiende o le da igual?
4. ¿Le gusta que le recuerden sus turnos? ¿Con cuánta anticipación? ¿Por qué medio?
5. ¿Alguna vez no fue a un turno que había reservado? ¿Por qué? ¿Le hubiera gustado poder cancelar fácilmente?
6. ¿Ha tenido que reprogramar una cita? ¿Cómo lo hizo? ¿Fue complicado?
7. ¿Usa WhatsApp para comunicarse con negocios? ¿Preferiría una app o web dedicada?
8. ¿Qué tan importante es para usted ver los horarios disponibles sin tener que llamar?
9. Si pudiera cambiar la forma en que reserva turnos, ¿qué cambiaría?
10. ¿Hay algo más que quiera compartir sobre su experiencia reservando servicios?

---

## Parte 3: Formato de observación del proceso actual (AS-IS)

Este formato se completa **durante la observación in-situ** de una jornada real en el negocio. Registrar momento a momento cómo se gestionan las reservas en el estado actual.

### Datos generales

| Campo | Registro |
|-------|----------|
| **EV-ID** | EV-OBS-001 |
| **Negocio** | |
| **Tipo** | Peluquería / Barbería / Clínica / Otro |
| **Sucursal** | |
| **Fecha** | |
| **Observador** | |
| **Hora inicio** | |
| **Hora fin** | |
| **Profesionales activos** | |

### Inventario tecnológico actual

| Recurso | Sí/No | Observación |
|---------|-------|-------------|
| Computadora en recepción | | |
| Smartphone del recepcionista | | |
| WhatsApp Business | | |
| Agenda física / papel | | |
| Excel o similar | | |
| Software de gestión actual | | |
| Internet estable | | |
| Impresora | | |

### Registro de eventos cronológico

| Hora | Evento | Canal | Duración | Dolor observado | Resolución |
|------|--------|-------|----------|-----------------|------------|
| | Llamada para consultar disponibilidad | | | | |
| | Llamada para reservar | | | | |
| | Mensaje WhatsApp para reservar | | | | |
| | Cliente presencial sin reserva | | | | |
| | Cancelación | | | | |
| | Reprogramación | | | | |
| | Cliente que no llegó (no-show) | | | | |
| | Consulta de agenda por profesional | | | | |
| | Conflicto / doble reserva | | | | |
| | Gestión de lista de espera | | | | |

### Muestra de agenda actual (fotografía o transcripción)

```
Registrar aquí una muestra de cómo se ve la agenda actual del negocio.
Si es en papel, describir el formato.
Si es digital, indicar qué columnas/campos tiene.
```

### Métricas observadas

| Métrica | Valor observado |
|---------|----------------|
| Total de reservas en el día | |
| Cancelaciones | |
| No-shows | |
| Reprogramaciones | |
| Reservas de último minuto (< 2h) | |
| Llamadas para consultar disponibilidad | |
| Mensajes WhatsApp para consultar | |
| Conflictos de horario detectados | |

### Hallazgos cualitativos

| # | Observación | Severidad (B/M/A) | Evidencia relacionada |
|---|-------------|-------------------|----------------------|
| 1 | | | |
| 2 | | | |
| 3 | | | |

### Fotos / capturas

(Adjuntar fotos de agendas, pantallazos de WhatsApp, formatos en papel)

⚠️ **Privacidad:** Anonimizar nombres de clientes y datos de contacto en cualquier captura antes de almacenarla como evidencia. Difuminar (blur) o recortar información personal identificable.

---

## Instrucciones de uso

### Antes de cada sesión

1. Elegir el perfil del participante y preparar la guía correspondiente.
2. Tener las 5 preguntas cerradas listas para el final de la sesión.
3. Confirmar que el participante autoriza la grabación o toma de notas.
4. Para EV-PLAN-001 a EV-PLAN-003, agendar también la observación in-situ.

### Durante la sesión

1. Iniciar con la **entrevista abierta** (25-30 min). Dejar que el participante hable.
2. Registrar respuestas textuales. No interpretar ni resumir.
3. Al final, aplicar las **5 preguntas cerradas** de su bloque (5 min).
4. Registrar nivel de confianza del hallazgo (Alta / Media / Baja).

### Después de la sesión

1. Transcribir hallazgos al registro de evidencia `EV-xxx` en `04-Discovery-and-Elicitation.md`.
2. Identificar qué hipótesis (H-001 a H-003) y supuestos (A-001 a A-010) se ven afectados.
3. Si un hallazgo contradice un supuesto, marcarlo como hallazgo crítico.
4. Si la evidencia es suficiente, actualizar el estado de la hipótesis o supuesto en los documentos correspondientes.

### Análisis de resultados

| Hipótesis | Validada | Refutada | Inconclusa | Evidencia |
|-----------|----------|----------|------------|-----------|
| H-001: Hay dobles reservas | ☐ | ☐ | ☐ | |
| H-002: Clientes aceptan recordatorios | ☐ | ☐ | ☐ | |
| H-003: La espera mejora ocupación | ☐ | ☐ | ☐ | |

| Supuesto | Confirmado | Refutado | Inconcluso | Evidencia |
|----------|------------|----------|------------|-----------|
| A-001 Internet | ☐ | ☐ | ☐ | |
| A-002 Canal notificación | ☐ | ☐ | ☐ | |
| A-005 Dispositivo profesional | ☐ | ☐ | ☐ | |
| A-006 Smartphone cliente | ☐ | ☐ | ☐ | |
| A-007 Multi profesional | ☐ | ☐ | ☐ | |
| A-008 Roles | ☐ | ☐ | ☐ | |
| A-009 Recepcionista | ☐ | ☐ | ☐ | |
| A-010 Multisede | ☐ | ☐ | ☐ | |

## Referencias

- [Discovery and Elicitation](04-Discovery-and-Elicitation.md)
- [Lean Canvas](02-Lean-Canvas.md)
- [Assumptions](08-Assumptions.md)
- [Stakeholders](03-Stakeholders.md)
- [Business Processes](06-Business-Processes.md)

## Historial de cambios

| Fecha | Versión | Cambio | Autor |
| --- | --- | --- | --- |
| 2026-07-25 | 0.1 | Creación inicial | Architecture Team |
