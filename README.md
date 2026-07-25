<p align="center">
  <img src="https://img.shields.io/badge/Estado-En%20desarrollo-yellow" alt="Estado">
  <img src="https://img.shields.io/badge/Fase-Business%20Discovery%20%26%20Analysis-blue" alt="Fase">
  <img src="https://img.shields.io/badge/Licencia-MIT-green" alt="Licencia">
</p>

<h1 align="center">🍃 Moira Reservations</h1>

<p align="center">
  <strong>SaaS multitenant para gestión de reservas</strong><br>
  Centraliza agenda, reservas, recordatorios y lista de espera para<br>
  peluquerías, clínicas estéticas, barberías, centros médicos y cualquier<br>
  negocio con profesionales o recursos reservables.
</p>

---

## 🚀 El problema

Los pequeños negocios gestionan reservas con **WhatsApp, agendas físicas o Excel**. Esto genera:

| ❌ Problema | Impacto |
|------------|---------|
| **Dobles reservas** | Dos clientes citados a la misma hora con el mismo profesional |
| **Cancelaciones de último minuto** | Franjas perdidas que no se recuperan |
| **No-shows** | Clientes que no asisten y no avisan |
| **Baja ocupación** | Horarios desaprovechados por mala gestión |
| **Agenda dispersa** | Cada profesional maneja su agenda por separado |

## 🎯 La solución

**Moira** centraliza toda la operación de reservas en una plataforma SaaS:

| Funcionalidad | Descripción |
|--------------|-------------|
| 📅 **Agenda centralizada** | Vista unificada de todos los profesionales y sucursales |
| 🔄 **Reservas y cambios** | Creación, reprogramación y cancelación con validación de disponibilidad en tiempo real |
| 📋 **Lista de espera inteligente** | Recuperación automática de franjas liberadas por cancelación |
| 🔔 **Notificaciones multicanal** | Confirmaciones, recordatorios y alertas por WhatsApp, Telegram, correo o SMS |
| 👥 **Roles y permisos** | Superadministrador, administrador, recepcionista, profesional y cliente |
| 🏢 **Multitenencia** | Aislamiento completo entre organizaciones en una misma instancia |

## 📂 Estructura del repositorio

```
📁 Moira-Reservations-Docs/
├── 📁 00-governance/           # Principios, ciclo de vida, revisión
├── 📁 01-business-discovery/   # 🟢 Fase 1 — Análisis de negocio
│   ├── Product Vision
│   ├── Lean Canvas
│   ├── Stakeholders
│   ├── Glosario canónico (24 términos)
│   ├── Procesos TO-BE con Mermaid
│   ├── Reglas de negocio (BR-001 a BR-013)
│   ├── Supuestos y riesgos
│   └── Instrumentos de validación
├── 📁 02-requirements/         # 🟡 Fase 2 — Requirements Engineering (SRS)
├── 📁 03-software-design/      # ⚪ Fase 3 — SDD (en planificación)
├── 📁 ...                      # Fases 4-9 (futuro)
└── README.md                   # Este archivo
```

## 📊 Estado del proyecto

| Fase | Estado | Archivos | PR |
|------|--------|----------|----|
| 00 — Gobernanza documental | ✅ Completado | 7 | [#1](https://github.com/J04NONE/moira_reservation/pull/1) |
| 01 — Business Discovery & Analysis | ✅ Completado | 13 | [#1](https://github.com/J04NONE/moira_reservation/pull/1) |
| 02 — Requirements Engineering (SRS) | 🟡 Plan listo | — | Pendiente |
| 03 — Software Design (SDD) | ⚪ No iniciado | — | — |
| 04 — Architecture | ⚪ No iniciado | — | — |
| 05 — ADRs | ⚪ No iniciado | — | — |
| 06 — Testing | ⚪ No iniciado | — | — |
| 07 — DevOps | ⚪ No iniciado | — | — |
| 08 — Project Management | ⚪ No iniciado | — | — |
| 09 — Operations | ⚪ No iniciado | — | — |

## 🔧 Stack objetivo

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

## 📄 Licencia

MIT — Proyecto académico y de aprendizaje.

---

<p align="center">
  <sub>Hecho con ❤️ para pequeños negocios que merecen una gestión de reservas profesional.</sub>
</p>
