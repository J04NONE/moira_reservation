# Diseño — Fase 2: Requirements Engineering (SRS IEEE 29148)

| Campo | Valor |
| --- | --- |
| Versión | 1.0-rc1 |
| Estado | Draft — revisión solicitada |
| Propietario | Architecture Team |
| Clasificación | Internal |
| Confidencialidad | Uso interno del proyecto |
| Revisores | Product Owner, Architecture Review |
| Aprobadores | Product Owner, Architecture Review Board |
| Última actualización | 2026-07-25 |
| Próxima revisión | Antes de iniciar la planificación de implementación |

## Propósito

Transformar la línea base de negocio (Fase 1) en una especificación de requisitos software completa, trazable y conforme a ISO/IEC/IEEE 29148. Al final de esta fase, cualquier equipo de desarrollo debe poder implementar el MVP de Moira Reservaciones guiándose exclusivamente por los artefactos producidos.

## Objetivos de la fase

Al concluir la fase, el equipo debe:

- Definir una metodología consistente de requisitos (identificación, redacción, versionado, deprecación y trazabilidad) que las fases posteriores heredarán.
- Producir un catálogo completo de requisitos funcionales (`RF-xxx`) trazables a reglas de negocio.
- Producir un catálogo de requisitos no funcionales (`RNF-xxx`) con atributos de calidad medibles.
- Especificar casos de uso (`CU-xxx`) con flujo principal, flujos alternativos y excepciones documentadas.
- Redactar historias de usuario (`HU-xxx`) con criterios de aceptación GWT (Given/When/Then).
- Establecer la Matriz de Trazabilidad de Requisitos (RTM) que conecte reglas → requisitos → casos de uso → historias → pruebas.
- Armonizar y consolidar el contenido del SRS semilla (`02-SRS.md`) dentro de la nueva estructura.

## Resultados esperados

| Objetivo | Resultado verificable |
| --- | --- |
| Metodología de requisitos | `Requirements-Methodology.md` aprobado como guía vinculante. |
| Catálogo de RF | `01-Functional-Requirements.md` con RF-001 a RF-xxx, cada uno trazable a su regla de negocio. |
| Catálogo de RNF | `02-Non-Functional-Requirements.md` con RNF-SEC-xxx, RNF-PERF-xxx, RNF-AVA-xxx, RNF-OBS-xxx, RNF-USA-xxx y RNF-MAN-xxx. |
| Casos de uso | `03-Use-Cases.md` con especificaciones completas (nombre, actores, precondiciones, flujo principal, flujos alternativos, postcondiciones, excepciones). |
| Historias de usuario | `04-User-Stories.md` con HU-xxx y criterios de aceptación en formato GWT. |
| Trazabilidad | `05-Traceability-Matrix.md` con cobertura 100 % verificable. |
| README de fase | `README.md` con índice, estado de madurez y criterios de salida. |

## Alcance

La fase documenta la especificación completa de requisitos del MVP de Moira Reservations, abarcando:

- Metodología y convenciones para la redacción de requisitos.
- Catálogo funcional completo: organización, sucursales, servicios, profesionales, disponibilidad, reservas, cancelaciones, reprogramaciones, lista de espera, reasignación automática, notificaciones, autenticación, autorización, reportes y paneles.
- Catálogo no funcional: seguridad, rendimiento, disponibilidad, operación, usabilidad y mantenibilidad.
- Casos de uso exhaustivos para todos los flujos identificados en los procesos TO-BE de la Fase 1.
- Historias de usuario derivadas de los casos de uso, con criterios de aceptación GWT.
- RTM completa.

Quedan **fuera del alcance** de esta fase:

- Diseño de la solución (SDD, C4, UML, modelo de datos, API) — corresponde a Fase 3.
- Decisiones arquitectónicas (ADR) — corresponde a Fase 3.
- Plan de pruebas (estrategia, casos de prueba) — corresponde a Fase 4.
- Infraestructura, despliegue y operaciones — corresponde a Fase 5.

## Entregables

Los artefactos de la fase se alojarán en `Moira-Reservations-Docs/02-requirements-engineering/`:

- `README.md`: índice, estado de madurez, objetivos, dependencias, métricas y criterios de salida.
- `Requirements-Methodology.md`: metodología vinculante para la identificación, redacción, priorización (MoSCoW), versionado, deprecación y trazabilidad de los requisitos.
- `01-Functional-Requirements.md`: catálogo completo de `RF-001` a `RF-xxx`. Cada requisito incluirá:
  - ID único, título, descripción funcional, reglas de negocio relacionadas (`BR-xxx`), prioridad (MoSCoW), fuente, actor, dependencias y estado.
- `02-Non-Functional-Requirements.md`: catálogo completo de `RNF-xxx`. Cada requisito incluirá:
  - ID único, título, categoría (seguridad, rendimiento, disponibilidad, operación, usabilidad, mantenibilidad), descripción, métrica/umbral, prioridad, fuente y estado.
- `03-Use-Cases.md`: especificaciones completas de casos de uso `CU-001` a `CU-xxx`. Cada caso de uso incluirá:
  - ID, nombre, actores (primario/secundario), precondiciones, postcondiciones, flujo principal (numerado), flujos alternativos, excepciones, reglas de negocio relacionadas y requisitos funcionales asociados.
- `04-User-Stories.md`: catálogo de `HU-001` a `HU-xxx`. Cada historia incluirá:
  - ID, título, formato "Como… quiero… para…", criterios de aceptación en GWT (Given/When/Then), caso de uso relacionado, prioridad MoSCoW y puntos de historia estimados (T-shirt sizing: XS/S/M/L/XL).
- `05-Traceability-Matrix.md`: RTM completa con las siguientes tablas:
  - Reglas de negocio → Requisitos funcionales
  - Requisitos funcionales → Casos de uso
  - Casos de uso → Historias de usuario
  - Requisitos no funcionales → Atributos de calidad

El SRS semilla (`02-SRS.md`) se preserva en la raíz como referencia histórica; su contenido se migra, expande y reemplaza por los artefactos de esta fase.

## Dependencias

Esta fase consume los siguientes artefactos de la Fase 1 (Business Discovery & Analysis):

| Artefacto | Uso en Requirements Engineering |
| --- | --- |
| `01-Product-Vision.md` | Alcance, métricas de negocio y exclusiones del MVP. |
| `03-Stakeholders.md` | Identificación de actores del sistema (cada stakeholder es un posible actor). |
| `05-Glossary.md` | Lenguaje ubicuo; los requisitos deben usar términos canónicos. |
| `06-Business-Processes.md` | Flujos TO-BE; casos de uso se derivan directamente de estos procesos. |
| `07-Business-Rules.md` | Reglas `BR-001` a `BR-010`; cada requisito funcional se traza a una o más reglas. |
| `08-Assumptions.md` | Supuestos que condicionan requisitos; si un supuesto se invalida, el requisito asociado se revisa. |
| `09-Discovery-Risks.md` | Riesgos que pueden afectar la priorización o la completitud de los requisitos. |
| `10-Domain-Overview.md` | Modelo conceptual; asegura que los requisitos respetan el dominio. |
| `11-Out-of-Scope.md` | Límites: ningún requisito debe sobrepasar las exclusiones acordadas. |

También depende de los artefactos de gobierno:

| Artefacto | Uso |
| --- | --- |
| `Documentation-Principles.md` | Los principios 4 (trazabilidad de requisitos) y 8 (historia deriva de caso de uso) son vinculantes. |
| `Documentation-Architecture.md` | La cadena de trazabilidad `Proceso/Regla → Requisito → Caso de uso → Historia → Prueba` guía la estructura. |
| `Document-Template.md` | Todos los documentos nuevos deben seguir la plantilla. |
| `Decision-Log.md` | Las decisiones metodológicas de esta fase se registran aquí. |

## Arquitectura documental objetivo

```
Moira-Reservations-Docs/
└── 02-requirements-engineering/
    ├── README.md                          # Índice de la fase
    ├── Requirements-Methodology.md        # Metodología vinculante
    ├── 01-Functional-Requirements.md      # RF-001 a RF-xxx
    ├── 02-Non-Functional-Requirements.md  # RNF-xxx
    ├── 03-Use-Cases.md                    # CU-001 a CU-xxx
    ├── 04-User-Stories.md                 # HU-001 a HU-xxx
    └── 05-Traceability-Matrix.md          # RTM completa
```

La carpeta `02-requirements-engineering/` se enlazará desde el `README.md` raíz.

## Convenciones y trazabilidad

### Identificadores

| Prefijo | Artefacto | Formato |
| --- | --- | --- |
| `RF-` | Requisito funcional | `RF-001`, `RF-002`, ... |
| `RNF-` | Requisito no funcional | `RNF-SEC-001`, `RNF-PERF-001`, ... |
| `CU-` | Caso de uso | `CU-001`, `CU-002`, ... |
| `HU-` | Historia de usuario | `HU-001`, `HU-002`, ... |

Los identificadores son estables: una vez asignados no se reutilizan aunque el requisito se depreque.

### Redacción de requisitos funcionales

Cada requisito funcional se redacta siguiendo el patrón:

> **RF-xxx: [Título]**
> El sistema debe [acción] para que [resultado].
>
> - **Reglas:** BR-xxx, BR-yyy
> - **Prioridad:** Must / Should / Could / Won't (MoSCoW)
> - **Actor:** [rol primario]
> - **Fuente:** [documento o entrevista]
> - **Dependencias:** RF-yyy
> - **Estado:** Draft / Review / Approved / Deprecated

### Redacción de requisitos no funcionales

Cada requisito no funcional se redacta siguiendo el patrón:

> **RNF-xxx: [Título]**
> El sistema debe [atributo de calidad] medido por [métrica].
>
> - **Categoría:** Seguridad / Rendimiento / Disponibilidad / Operación / Usabilidad / Mantenibilidad
> - **Umbral:** [valor métrico con condición]
> - **Prioridad:** Must / Should / Could
> - **Fuente:** [documento o decisión]
> - **Estado:** Draft / Review / Approved / Deprecated

### Redacción de casos de uso

Cada caso de uso sigue la plantilla IEEE 29148 adaptada:

> **CU-xxx: [Nombre del caso de uso]**
>
> - **Actores:** Primario: [rol]; Secundarios: [roles]
> - **Precondiciones:** [lista numerada]
> - **Postcondiciones:** [lista numerada]
> - **Flujo principal:**
>   1. [Paso 1]
>   2. [Paso 2]
> - **Flujos alternativos:**
>   - FA-xx.1: [descripción y pasos]
> - **Excepciones:**
>   - E-xx.1: [descripción y respuesta del sistema]
> - **Reglas de negocio:** BR-xxx, BR-yyy
> - **Requisitos funcionales:** RF-xxx, RF-yyy

### Redacción de historias de usuario

Cada historia de usuario sigue el formato:

> **HU-xxx: [Título]**
>
> **Como** [rol] **quiero** [acción] **para** [beneficio].
>
> **Criterios de aceptación (GWT):**
>
> **Escenario 1:** [Nombre del escenario]
> - Given [contexto inicial]
> - When [evento o acción]
> - Then [resultado esperado]
>
> **Escenario n:** [Nombre del escenario alternativo]
>
> - **Caso de uso:** CU-xxx
> - **Prioridad:** Must / Should / Could / Won't
> - **Talla:** XS / S / M / L / XL

### Cobertura y validación de trazabilidad

La RTM debe verificar que:

1. Toda regla de negocio `BR-xxx` tiene al menos un requisito funcional que la implementa.
2. Todo requisito funcional `RF-xxx` tiene al menos un caso de uso que lo exercise.
3. Todo caso de uso `CU-xxx` tiene al menos una historia de usuario que lo valida desde la perspectiva del usuario.
4. Los requisitos funcionales huérfanos (sin caso de uso) o los casos de uso huérfanos (sin historia) se marcan como excepción y se justifican.

## Restricciones conocidas

- Los requisitos deben usar el lenguaje del glosario canónico (`05-Glossary.md`). No se introducen términos nuevos sin actualizar el glosario.
- Los casos de uso se derivan de los procesos TO-BE (`06-Business-Processes.md`) y cubren todos los flujos identificados.
- El SRS semilla (`02-SRS.md`) contiene ~34 RF y ~6 CU; esta fase debe expandir, reorganizar y completar el catálogo hasta cubrir todo el MVP.
- La priorización sigue MoSCoW, no números abstractos del 1 al 5.
- La estimación usa T-shirt sizing (XS/S/M/L/XL), no puntos de historia ni horas.
- No se incluyen diagramas UML ni C4 en esta fase — los casos de uso se describen textualmente.
- Todos los criterios de aceptación usan GWT (Given/When/Then), no texto libre.

## Límites y exclusiones de la fase

Quedan excluidos de esta fase: diseño de la solución (SDD), modelo de datos, especificación API, diagramas C4/UML, decisiones arquitectónicas (ADR), plan de pruebas, infraestructura, despliegue, pipeline CI/CD, runbooks y estrategia de observabilidad.

## Calidad y validación

Antes de entregar la fase se comprobará que:

- el 100 % de los documentos están enlazados desde el `README.md` de la fase;
- el 100 % de los `RF-xxx` citan al menos una regla `BR-xxx` existente en la Fase 1;
- el 100 % de los `CU-xxx` tienen flujo principal completo numerado;
- el 100 % de los `HU-xxx` tienen criterios de aceptación en formato GWT;
- el 100 % de las reglas `BR-xxx` tienen al menos un `RF-xxx` asociado en la RTM;
- el 100 % de los `RF-xxx` tienen al menos un `CU-xxx` asociado en la RTM;
- el 100 % de los `CU-xxx` tienen al menos una `HU-xxx` asociada en la RTM;
- existen cero enlaces rotos, definiciones duplicadas, términos fuera del glosario o marcadores `TODO`;
- el vocabulario usado en los requisitos coincide con el glosario canónico de la Fase 1.

## Criterios de salida

La fase se cierra cuando:

1. La metodología de requisitos está publicada y aprobada.
2. El catálogo de requisitos funcionales cubre el alcance completo del MVP sin lagunas conocidas.
3. El catálogo de requisitos no funcionales cubre seguridad, rendimiento, disponibilidad, operación, usabilidad y mantenibilidad.
4. Todos los procesos TO-BE tienen casos de uso correspondientes.
5. Todas las reglas de negocio `BR-001` a `BR-010` están trazadas a requisitos funcionales.
6. La RTM es completa, verificable y no tiene huecos no justificados.
7. Product Owner y Architecture Review aprueban el cierre de la fase.

## Criterios de aceptación

La fase será aceptada cuando:

- Todos los entregables definidos existen y están indexados.
- No hay conflictos, ambigüedades ni lagunas en los requisitos.
- Los interesados críticos han aprobado los artefactos relevantes.
- Toda regla, requisito, caso de uso e historia tiene la trazabilidad indicada en las convenciones.
- El validador automatizado (extensión del script de Fase 1) pasa sin errores.

## Métricas de éxito

- **Cobertura de reglas de negocio:** 100 % de las `BR-xxx` trazadas a ≥ 1 `RF-xxx`.
- **Cobertura de requisitos funcionales:** 100 % de los `RF-xxx` trazados a ≥ 1 `CU-xxx`.
- **Cobertura de casos de uso:** 100 % de los `CU-xxx` trazados a ≥ 1 `HU-xxx`.
- **Completitud de casos de uso:** 100 % con flujo principal, precondiciones y postcondiciones.
- **Completitud de historias:** 100 % con criterios GWT.
- **Ausencia de deuda de trazabilidad:** 0 requisitos huérfanos no justificados.
- **Consistencia terminológica:** 0 términos fuera del glosario canónico.

## Gestión de cambios

Todo cambio en los artefactos de esta fase debe:

1. Justificar el motivo del cambio.
2. Identificar los artefactos e identificadores afectados (`RF-xxx`, `CU-xxx`, `HU-xxx`).
3. Actualizar la trazabilidad en la RTM.
4. Registrar su impacto.
5. Pasar la revisión definida en `Review-Process.md`.

Las decisiones metodológicas se registran en el `Decision-Log.md`. Las decisiones que afectan a la arquitectura se registran mediante ADR en la Fase 3.

## Architectural Decision

Referencia: `ADR-001 Documentation Strategy`.

## Referencias

- ISO/IEC/IEEE 29148:2018, *Systems and software engineering — Requirements engineering*.
- ISO/IEC/IEEE 24765, *Systems and software engineering — Vocabulary*.
- Cohn, M. (2004). *User Stories Applied: For Agile Software Development*.
- MoSCoW prioritization (DSDM Consortium).
- Given/When/Then format (Behavior-Driven Development).
- IIBA, *BABOK Guide v3* — secciones sobre especificación de requisitos.
