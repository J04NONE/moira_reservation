# Stakeholders

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

## Clasificación por clase

| Clase | Interesados | Participación |
| --- | --- | --- |
| Primarios | Superadministrador, Administrador, Recepcionista, Profesional, Cliente | Entrevistas y revisión de procesos. |
| Secundarios | Propietario del negocio, equipo operativo | Priorización y validación de valor. |
| Externos | Proveedores de mensajería (Twilio, Telegram API, WhatsApp Business API, proveedores SMS) | Validación de canales y restricciones. |
| Regulatorios | Autoridad de protección de datos aplicable (LGPD/AGDP) | Consulta de cumplimiento futuro. |
| Técnicos | Producto, Architecture Review, operaciones | Revisión de trazabilidad y factibilidad. |

## Perfiles detallados de actores primarios

### Superadministrador

| Aspecto | Descripción |
| --- | --- |
| **Rol** | Administra la plataforma SaaS global. Onboarding de nuevas organizaciones, configuración de políticas generales, monitoreo de uso. |
| **Objetivos** | Incorporar organizaciones sin fricción; mantener la plataforma operativa; garantizar aislamiento entre organizaciones. |
| **Necesidades de información** | Dashboard global de organizaciones activas; métricas de uso de la plataforma; alertas de anomalías. |
| **Frecuencia de uso** | Diaria (monitoreo ligero); semanal (revisión de nuevas organizaciones). |
| **Nivel técnico** | Alto — comprende sistemas SaaS, roles, APIs. |
| **Pain points** | Procesos manuales de onboarding; falta de visibilidad del estado de cada organización; incapacidad de detectar problemas antes de que afecten a organizaciones. |

### Administrador de organización

| Aspecto | Descripción |
| --- | --- |
| **Rol** | Configura y opera el sistema para su organización: sucursales, servicios, profesionales, horarios y políticas. |
| **Objetivos** | Configurar el sistema rápidamente; maximizar ocupación; reducir no-shows; evitar dobles reservas; tener visibilidad del negocio. |
| **Necesidades de información** | Ocupación por profesional/servicio; tasa de cancelaciones; ingresos potenciales; rendimiento del equipo. |
| **Frecuencia de uso** | Diaria (revisión de agenda y reportes); semanal (ajustes de horarios y personal). |
| **Nivel técnico** | Medio — usa sistemas de gestión, apps móviles y web. |
| **Pain points** | Gestionar horarios en papel o WhatsApp; clientes que no se presentan; sobreventa de turnos; difícil encontrar huecos libres. |

### Recepcionista

| Aspecto | Descripción |
| --- | --- |
| **Rol** | Gestiona la agenda del día: recibe clientes, crea/modifica/cancela reservas, gestiona lista de espera y confirma asistencia. |
| **Objetivos** | Mantener la agenda organizada; evitar conflictos de horarios; atender rápido a clientes presenciales y telefónicos. |
| **Necesidades de información** | Agenda del día clara y actualizada; datos de contacto del cliente; historial de reservas del cliente. |
| **Frecuencia de uso** | Continua durante toda la jornada laboral. |
| **Nivel técnico** | Bajo-Medio — usa WhatsApp y sistemas simples. Necesita interfaz intuitiva. |
| **Pain points** | Llamadas constantes para consultar disponibilidad; apuntar reservas en papel y luego pasarlas al sistema; clientes que cancelan de último minuto; gestionar lista de espera manualmente. |

### Profesional

| Aspecto | Descripción |
| --- | --- |
| **Rol** | Presta el servicio directo al cliente. Gestiona su propia disponibilidad y agenda. |
| **Objetivos** | Ver su agenda del día; bloquear días no disponibles; minimizar tiempos muertos entre servicios. |
| **Necesidades de información** | Agenda del día con detalles del cliente y servicio; notificaciones de nuevas reservas o cambios. |
| **Frecuencia de uso** | Varias veces al día (revisar agenda, marcar disponibilidad). |
| **Nivel técnico** | Bajo-Medio — usa smartphone principalmente. |
| **Pain points** | Sorprenderse con reservas que no esperaba; no poder bloquear días libres fácilmente; no saber quién será su próximo cliente. |

### Cliente

| Aspecto | Descripción |
| --- | --- |
| **Rol** | Solicita y gestiona sus reservas. Elige profesional, servicio y horario. |
| **Objetivos** | Reservar rápido sin llamar; recibir confirmación y recordatorio; cancelar o reprogramar sin fricción. |
| **Necesidades de información** | Disponibilidad en tiempo real; confirmación de reserva; recordatorio antes del turno; opciones de cancelación. |
| **Frecuencia de uso** | Ocasional (1-4 veces al mes). |
| **Nivel técnico** | Variable — usa WhatsApp, puede tener o no la app del canal. |
| **Pain points** | Llamar para saber disponibilidad; que no le confirmen la reserva; olvidar el turno; no saber cómo cancelar; llegar y que su profesional no esté disponible. |

## Matriz de influencia e interés

| Interesado | Influencia | Interés | Estrategia |
| --- | --- | --- | --- |
| Superadministrador | Alta | Alto | Mantener informado, involucrar en decisiones técnicas |
| Administrador de organización | Alta | Alto | Gestión activa, cocreación de funcionalidades |
| Recepcionista | Media | Alto | Participación en diseño de UX, validación de flujos |
| Profesional | Media | Medio | Participación en diseño de disponibilidad |
| Cliente | Baja | Alto | Validación de experiencia de reserva y notificaciones |
| Propietario del negocio | Alta | Medio | Aprobación de inversión, priorización de valor |
| Proveedores de mensajería | Baja | Bajo | Monitoreo de cambios en APIs |

## Referencias

- [Product Vision](01-Product-Vision.md)
- [Discovery and Elicitation](04-Discovery-and-Elicitation.md)

## Historial de cambios

| Fecha | Versión | Cambio | Autor |
| --- | --- | --- | --- |
| 2026-07-25 | 0.1 | Creación inicial | Architecture Team |
| 2026-07-25 | 0.2 | Añadido Superadministrador, perfiles detallados con objetivos y pain points, matriz de influencia | Architecture Team |
