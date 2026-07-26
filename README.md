<p align="center">
  <img src="https://img.shields.io/badge/Estado-En%20desarrollo-yellow" alt="Estado">
  <img src="https://img.shields.io/badge/Fase-Discovery%20%26%20Analysis-blue" alt="Fase">

<h1 align="center">🍃 Moira Reservations</h1>

<p align="center">
  <strong>SaaS multitenant para gestión de reservas</strong><br>
  Centraliza agenda, turnos, recordatorios y lista de espera para<br>
  peluquerías, clínicas estéticas, barberías, centros médicos y cualquier<br>
  negocio con profesionales o recursos reservables.
</p>

---

## 🚀 El problema

Los pequeños negocios gestionan reservas con **WhatsApp, agendas de papel o Excel**. Esto genera:

| ❌ Problema | Impacto |
|------------|---------|
| **Dobles turnos** | Dos clientes citados a la misma hora con el mismo profesional |
| **Cancelaciones de último momento** | Horarios perdidos que no se recuperan |
| **No-shows** | Clientes que no asisten y no avisan |
| **Baja ocupación** | Horarios desaprovechados por mala gestión |
| **Agenda dispersa** | Cada profesional maneja su agenda por separado |

## 🎯 La solución

**Moira** centraliza toda la operación de turnos en una plataforma SaaS:

| Funcionalidad | Descripción |
|--------------|-------------|
| 📅 **Agenda centralizada** | Vista unificada de todos los profesionales y sucursales |
| 🔄 **Turnos y cambios** | Creación, reprogramación y cancelación con validación de disponibilidad en tiempo real |
| ⏳ **Lista de espera inteligente** | Recuperación automática de horarios liberados por cancelación |
| 🔔 **Notificaciones multicanal** | Confirmaciones, recordatorios y alertas por WhatsApp, Telegram, correo o SMS |
| 👥 **Roles y permisos** | Superadmin, admin, recepcionista, profesional y cliente |
| 🏢 **Multitenencia** | Aislamiento completo entre organizaciones en una misma instancia |

## 📂 Estructura del repositorio

```
📁 Moira-Reservations-Docs/
├── 📁 00-governance/                      # 🏛️ Gobierno documental
├── 📁 01-business-discovery-and-analysis/ # 🟢 Fase 01 — Análisis de negocio
│   ├── Product Vision
│   ├── Lean Canvas
│   ├── Stakeholders
│   ├── Glosario (24 términos canónicos)
│   ├── Procesos TO-BE con Mermaid
│   ├── Reglas de negocio (BR-001 a BR-013)
│   ├── Supuestos y riesgos
│   └── Instrumentos de validación
├── 📁 02-requirements-engineering/        # 🟡 Fase 02 — Requirements Engineering
├── 📁 03-software-design/                 # ⚪ Fase 03 — SDD (en planificación)
├── 📁 04-architecture/                    # ⚪ Fase 04 — Arquitectura
├── 📁 05-adrs/                            # ⚪ Fase 05 — ADRs
├── 📁 06-testing/                         # ⚪ Fase 06 — Testing
├── 📁 07-devops/                          # ⚪ Fase 07 — DevOps
├── 📁 08-project-management/              # ⚪ Fase 08 — Project Management
├── 📁 09-operations/                      # ⚪ Fase 09 — Operaciones
└── 📄 README.md                           # Este archivo

> 📖 Explora el [índice completo del sistema documental](Moira-Reservations-Docs/README.md)
```

## 📊 Estado del proyecto

| Fase | Estado | Archivos | PR |
|------|--------|----------|----|
| **00 — Gobernanza documental** | ✅ Completado | 7 | [#1](https://github.com/J04NONE/moira_reservation/pull/1) |
| **01 — Business Discovery & Analysis** | ✅ Completado | 13 | [#1](https://github.com/J04NONE/moira_reservation/pull/1) |
| **02 — Requirements Engineering** | 🟡 Plan listo | — | Pendiente |
| **03 — Software Design (SDD)** | ⚪ No iniciado | — | — |
| **04 — Arquitectura** | ⚪ No iniciado | — | — |
| **05 — ADRs** | ⚪ No iniciado | — | — |
| **06 — Testing** | ⚪ No iniciado | — | — |
| **07 — DevOps** | ⚪ No iniciado | — | — |
| **08 — Project Management** | ⚪ No iniciado | — | — |
| **09 — Operaciones** | ⚪ No iniciado | — | — |

---

## 🗺️ Roadmap

### Fase 01 — Business Discovery & Analysis ✅ Completada

| Hito | Estado |
|------|--------|
| Documentos de gobierno | ✅ |
| Visión de producto y Lean Canvas | ✅ |
| Stakeholders y descubrimiento | ✅ |
| Glosario, procesos y reglas de negocio | ✅ |
| Supuestos, riesgos y domain overview | ✅ |
| Instrumentos de validación | ✅ |
| Ejecución de entrevistas de validación (EV-PLAN) | ⏳ Pendiente |

### Fase 02 — Requirements Engineering 🟡 Plan listo

| Hito | Depende de |
|------|------------|
| Metodología de requisitos | — |
| Catálogo RF (75 requisitos funcionales) | Fase 01 |
| Catálogo RNF (23 requisitos no funcionales) | Fase 01 |
| Casos de uso (10 CU) | RF |
| Historias de usuario con criterios GWT | CU |
| Matriz de trazabilidad (RTM) | RF + CU + HU |
| Validación con stakeholders | Entrevistas EV-PLAN |

### Fase 03 — Software Design (SDD) ⚪ Pendiente

| Hito | Depende de |
|------|------------|
| Diagramas C4 (Contexto, Contenedores, Componentes, Código) | Fase 02 |
| Modelo de dominio UML | Fase 02 |
| Modelo de datos (DER) | Modelo de dominio |
| Especificación API REST (OpenAPI) | SDD |
| Decisiones arquitectónicas (ADRs) | SDD |

### Fase 04 — Arquitectura ⚪ Pendiente

| Hito | Depende de |
|------|------------|
| Arquitectura lógica y física | SDD |
| Estrategia de seguridad (STRIDE) | SDD |
| Modelo de multitenencia | SDD |
| Estrategia de escalabilidad | SDD |

### Fase 05 — ADRs ⚪ Pendiente

Registro de todas las decisiones arquitectónicas significativas.

### Fase 06 — Testing ⚪ Pendiente

| Hito |
|------|
| Estrategia de pruebas |
| Plan de pruebas funcionales |
| Plan de pruebas de carga |

### Fase 07 — DevOps ⚪ Pendiente

| Hito |
|------|
| Pipeline CI/CD (GitHub Actions) |
| Dockerización |
| Manual de despliegue |

### Fase 08 — Project Management ⚪ Pendiente

| Hito |
|------|
| Backlog Scrum y MoSCoW |
| Convenciones de Git y Definition of Done |

### Fase 09 — Operaciones ⚪ Pendiente

| Hito |
|------|
| Infraestructura y monitoreo |
| Plan de recuperación y backups |
| Estrategia de crecimiento |

---

## 🔧 Stack tecnológico

```
Frontend         → React
Backend          → Django REST Framework
Base de datos    → PostgreSQL
Cache / Colas    → Redis + Celery
Contenedores     → Docker
CI/CD            → GitHub Actions
Documentación    → Markdown + Mermaid + PlantUML
```

## 🎯 Principios arquitectónicos

- **Simplicidad** antes que sobreingeniería
- **Monolito modular** para el MVP, evolutivo a microservicios si las métricas lo justifican
- **Seguridad por defensa en profundidad**: JWT + RBAC + middleware + ORM + RLS
- **Trazabilidad completa**: cada regla de negocio → requisito → caso de uso → historia → prueba
- **Decisiones registradas** mediante ADR (Architecture Decision Records)

## 🤝 Contribuir

Este proyecto está en fase de documentación. Las contribuciones son bienvenidas.

1. Revisa los [documentos de gobierno](Moira-Reservations-Docs/00-governance/)
2. Sigue el [proceso de revisión](Moira-Reservations-Docs/00-governance/Review-Process.md)
3. Ejecuta el validador antes de abrir un PR:
   ```powershell
   powershell -ExecutionPolicy Bypass -File "Moira-Reservations-Docs/00-governance/validate-documentation.ps1"
   ```

## 👥 Equipo

Somos un equipo de **2 desarrolladores** construyendo Moira Reservations con enfoque en producción desde el día uno.

## 📄 Licencia

Todos los derechos reservados.

---

<p align="center">
  <sub>Hecho con ❤️ para pequeños negocios que merecen una gestión de turnos profesional.</sub>
</p>
