# Software Requirements Specification (SRS)

## 1. Alcance

Este documento describe los requisitos funcionales y no funcionales de Moira Reservations, una plataforma SaaS para la gestión de reservas en pequeñas y medianas empresas de servicios presenciales (clínicas estéticas, peluquerías, barberías, salones de belleza, centros médicos, etc.).

El sistema permite administrar organizaciones, sucursales, servicios, profesionales, horarios y turnos, y gestionar el ciclo completo de una reserva con notificaciones, lista de espera y reasignación automática.

## 2. Definiciones clave

- Organización: cliente del SaaS que administra uno o varios locales.
- Sucursal: una ubicación física o unidad operativa de la organización.
- Profesional: persona que ofrece el servicio y es un recurso reservable.
- Servicio: prestación que se puede reservar (por ejemplo, corte de cabello, tratamiento facial, tatuaje, etc.).
- Turno: intervalo de tiempo reservado para un servicio y un profesional.
- Cliente: persona que solicita una reserva.
- Reserva: compromiso entre cliente, servicio, profesional y horario.
- Lista de espera: mecanismo para manejar cancelaciones y huecos de último minuto.
- Reasignación automática: asignación dinámica de un nuevo profesional o franja cuando ocurre una cancelación o rechazo.

## 3. Actores

- Superadministrador: gestiona la plataforma SaaS, configura políticas generales y controla el onboarding de nuevas organizaciones.
- Administrador de organización: configura la empresa, sucursales, servicios, profesionales, horarios y permisos.
- Recepcionista: gestiona reservas, clientes, reprogramaciones, cancelaciones y listas de espera dentro de la organización.
- Profesional: gestiona su propia disponibilidad, agenda y ve sus reservas asignadas.
- Cliente: solicita, visualiza y administra reservas, elige canal de notificación y accede a su historial.

## 4. Requisitos funcionales

### 4.1 Gestión de dominio

- RF-001 Registrar organización.
- RF-002 Gestionar sucursales.
- RF-003 Gestionar servicios.
- RF-004 Gestionar profesionales.
- RF-005 Definir especialidades y competencias de profesionales.
- RF-006 Definir canales de notificación disponibles.

### 4.2 Gestión de horarios y disponibilidad

- RF-007 Configurar horarios de atención generales por sucursal.
- RF-008 Configurar disponibilidad individual de cada profesional.
- RF-009 Definir duración y capacidad de cada servicio.
- RF-010 Bloquear franjas por mantenimiento, descansos o permisos.
- RF-011 Gestionar días festivos y horarios especiales.

### 4.3 Reservas y agenda

- RF-012 Crear reserva para cliente con servicio y profesional seleccionados.
- RF-013 Crear reserva con asignación automática de profesional disponible.
- RF-014 Permitir selección manual de profesional por parte del cliente o recepcionista.
- RF-015 Reprogramar reserva a nueva franja horaria.
- RF-016 Cancelar reserva.
- RF-017 Mostrar disponibilidad real-time de profesionales y servicios.
- RF-018 Gestionar lista de espera cuando no hay turno disponible.
- RF-019 Activar lista de espera tras cancelación y ofrecer reasignación.
- RF-020 Reasignar automáticamente la reserva a un profesional alternativo.
- RF-021 Registrar el historial completo de reservas y cambios.

### 4.4 Notificaciones y comunicación

- RF-022 Enviar confirmación de reserva.
- RF-023 Enviar recordatorio de turno.
- RF-024 Enviar notificación de cancelación o reprogramación.
- RF-025 Permitir que el cliente elija canal preferido (WhatsApp, Telegram, correo electrónico, SMS).
- RF-026 Registrar el estado de entrega de notificaciones.

### 4.5 Seguridad y control de acceso

- RF-027 Autenticación de usuarios.
- RF-028 Control de roles y permisos (RBAC).
- RF-029 Restricción de acceso a datos por organización y sucursal.
- RF-030 Auditoría de operaciones críticas.

### 4.6 Reportes y paneles

- RF-031 Ver agenda diaria/semana por profesional y sucursal.
- RF-032 Ver estadísticas de ocupación y cancelaciones.
- RF-033 Generar lista de reservas pendientes y lista de espera.
- RF-034 Ver métricas de cumplimiento de turnos.

## 5. Requisitos no funcionales

### Seguridad
- RNF-SEC-001 Aislamiento lógico entre organizaciones.
- RNF-SEC-002 Autenticación obligatoria para todos los usuarios.
- RNF-SEC-003 Control de acceso por rol y organización.
- RNF-SEC-004 Auditoría de creación, modificación y cancelación de reservas.
- RNF-SEC-005 Encriptación de datos sensibles en tránsito y en reposo.

### Rendimiento
- RNF-PERF-001 Latencia P95 < 500 ms para operaciones de reserva, búsqueda y agenda.
- RNF-PERF-002 Latencia P99 < 1.5 s para búsquedas de disponibilidad.
- RNF-ESC-001 Escalabilidad horizontal para soportar múltiples organizaciones simultáneas.

### Disponibilidad y Operación
- RNF-AVA-001 Disponibilidad objetivo 99.9%.
- RNF-AVA-002 Recuperación de fallos en menos de 15 minutos.
- RNF-OBS-001 Registro centralizado de eventos operativos.

### Usabilidad
- RNF-USA-001 Interfaz usable desde escritorio y móviles.
- RNF-USA-002 Flujo de reserva en menos de 3 pasos.
- RNF-USA-003 Información de disponibilidad clara y actualizada.

### Mantenibilidad
- RNF-MAN-001 Documentación de API y esquema de datos.
- RNF-MAN-002 Latencia de despliegue de cambios menor a 30 minutos en staging.
- RNF-TEST-001 Cobertura de pruebas unitarias y de integración clave > 80%.

## 6. Casos de uso

### CU-01 Crear reserva

**Actor principal:** Cliente / Recepcionista

**Descripción:** El actor selecciona sucursal, servicio y profesional o permite asignación automática. El sistema verifica disponibilidad, crea la reserva y envía confirmación.

**Flujo principal:**
1. El cliente inicia creación de reserva.
2. Selecciona sucursal y servicio.
3. Elige profesional o habilita asignación automática.
4. El sistema muestra franjas disponibles.
5. El actor confirma reserva.
6. El sistema registra la reserva y envía notificaciones.

**Excepciones:** profesional no disponible, servicio no definido, conflicto de horarios.

### CU-02 Reprogramar reserva

**Actor principal:** Cliente / Recepcionista

**Descripción:** El actor solicita cambiar la hora, el día o el profesional de una reserva existente.

**Flujo principal:**
1. El actor selecciona la reserva vigente.
2. Solicita nueva franja horaria o cambio de profesional.
3. El sistema valida disponibilidad.
4. Se actualiza la reserva y se notifica al cliente.

**Excepciones:** no hay franjas disponibles, profesional bloqueado, cliente no autorizado.

### CU-03 Cancelar reserva

**Actor principal:** Cliente / Recepcionista

**Descripción:** El actor cancela una reserva y, si procede, activa lista de espera.

**Flujo principal:**
1. El actor marca la reserva como cancelada.
2. El sistema notifica la cancelación.
3. Si hay lista de espera, propone reasignación.

**Excepciones:** cancelación fuera de plazo, reserva ya ejecutada.

### CU-04 Gestionar disponibilidad de profesionales

**Actor principal:** Administrador / Profesional

**Descripción:** El actor configura horarios de atención, descansos, lunes libres, feriados y bloqueos excepcionales.

**Flujo principal:**
1. Selecciona profesional y sucursal.
2. Define horarios periódicos y excepciones.
3. Guarda la disponibilidad.

**Excepciones:** intervalo inválido, solapamiento de horarios.

### CU-05 Administrar lista de espera

**Actor principal:** Recepcionista

**Descripción:** El actor gestiona listas de espera y confirma a un cliente cuando hay un hueco disponible.

**Flujo principal:**
1. El sistema identifica vacantes por cancelación o huecos.
2. Propone candidatos de la lista de espera.
3. El recepcionista confirma la reasignación.

**Excepciones:** lista de espera vacía, cliente no responde.

### CU-06 Configurar notificaciones

**Actor principal:** Administrador

**Descripción:** El actor configura canales y plantillas de notificación para confirmaciones, recordatorios y cambios.

**Flujo principal:**
1. El administrador define canales habilitados.
2. Configura plantillas y horarios de envío.
3. El sistema aplica la configuración.

**Excepciones:** canal no disponible, plantilla inválida.

## 7. Historias de usuario y criterios de aceptación

### HU-01
Como administrador de organización quiero definir profesionales y sus especialidades para que las reservas se asignen solo a quienes pueden prestar el servicio.

**Criterios de aceptación:**
- El administrador puede crear, editar y desactivar profesionales.
- Cada profesional puede tener una o varias especialidades.
- El sistema solo muestra profesionales compatibles con el servicio seleccionado.

### HU-02
Como cliente quiero reservar un turno sin elegir un profesional para que el sistema asigne automáticamente al mejor disponible.

**Criterios de aceptación:**
- El cliente puede alternar entre selección manual y automática.
- El sistema asigna un profesional disponible con la especialidad requerida.
- La reserva se muestra en la agenda del profesional asignado.

### HU-03
Como recepcionista quiero ver la agenda diaria de cada profesional para evitar dobles reservas.

**Criterios de aceptación:**
- La agenda incluye reservas confirmadas y bloques no disponibles.
- El sistema bloquea franjas ya ocupadas.
- El recepcionista puede filtrar por profesional y sucursal.

### HU-04
Como cliente quiero recibir recordatorios antes de mi turno para reducir ausencias.

**Criterios de aceptación:**
- El cliente selecciona canal preferido al crear la reserva.
- El sistema envía recordatorio en el plazo definido.
- El registro de notificaciones muestra el estado de envío.

### HU-05
Como administrador quiero que una cancelación active la lista de espera para aprovechar los espacios liberados.

**Criterios de aceptación:**
- El sistema propone automáticamente candidatos de la lista de espera.
- El recepcionista puede confirmar o descartar la reasignación.
- El cliente en lista de espera recibe notificación de oportunidad.

### HU-06
Como profesional quiero marcarme no disponible para que no se me asignen reservas durante ausencias.

**Criterios de aceptación:**
- El profesional puede definir bloqueos temporales.
- Las reservas existentes se reprograman o notifican si afectan la disponibilidad.
- El sistema no ofrece franjas en periodos bloqueados.

### HU-07
Como superadministrador quiero auditar cambios críticos para mantener control sobre la plataforma.

**Criterios de aceptación:**
- Todas las operaciones de reserva, cancelación, reprogramación y gestión de usuarios quedan registradas.
- La auditoría incluye usuario, organización, acción, fecha y hora.
- Un reporte de auditoría puede exportarse.

## 8. Reglas de negocio

- RB-001 Una reserva solo pertenece a una organización.
- RB-002 Una reserva puede estar asociada a un profesional concreto o a asignación automática.
- RB-003 Un profesional solo puede atender servicios compatibles con su especialidad.
- RB-004 Una cancelación puede activar la lista de espera.
- RB-005 Un cliente no puede tener dos reservas simultáneas en el mismo horario.
- RB-006 Las reservas deben respetar la disponibilidad de sucursal y profesional.
- RB-007 Las reservas reprogramadas mantienen el historial de cambios.
- RB-008 El cliente define el canal de notificación preferido.
- RB-009 Las reservas en lista de espera se ofertan por orden de prioridad / antigüedad.
- RB-010 Las franjas bloqueadas por permisos o descanso no se muestran como disponibles.

## 9. Matriz de trazabilidad

| Requisito funcional | Caso de uso | Historia de usuario |
| --- | --- | --- |
| RF-004 Gestionar profesionales | CU-04 Gestionar disponibilidad de profesionales | HU-01 Definir profesionales y especialidades |
| RF-012 Crear reserva | CU-01 Crear reserva | HU-02 Reserva con asignación automática |
| RF-015 Reprogramar reserva | CU-02 Reprogramar reserva | HU-03 Ver agenda diaria |
| RF-016 Cancelar reserva | CU-03 Cancelar reserva | HU-05 Cancelación activa lista de espera |
| RF-018 Gestionar lista de espera | CU-05 Administrar lista de espera | HU-05 Cancelación activa lista de espera |
| RF-022 Enviar confirmación de reserva | CU-01 Crear reserva | HU-04 Recordatorio de turno |
| RF-027 Autenticación de usuarios | CU-06 Configurar notificaciones | HU-07 Auditar cambios críticos |

## 10. Supuestos

- El sistema es utilizado por múltiples organizaciones independientes.
- Las sucursales pueden compartir profesionales o tener profesionales exclusivos.
- Los clientes pueden registrarse o reservar como invitados cuando la organización lo permita.
- El canal de notificación depende de la política de la organización y de la preferencia del cliente.
- Las reglas de negocio pueden adaptarse para distintos subsectores (salones, clínicas estéticas, barberías).

## 11. Prioridades iniciales

- Prioridad alta: gestión de profesionales, creación/cancelación/reprogramación de reservas, notificaciones y lista de espera.
- Prioridad media: estadísticas de ocupación, edición masiva de horarios y auditoría avanzada.
- Prioridad baja: reportes complejos, integración de métodos de pago y perfiles avanzados del cliente.
