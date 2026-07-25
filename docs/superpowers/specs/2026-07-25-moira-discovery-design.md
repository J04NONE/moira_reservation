# Diseño — Fase 1: Business Discovery & Analysis

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

Convertir el esqueleto de Moira Reservations en una base de análisis de negocio mantenible, consistente y trazable para las fases de requisitos, arquitectura e ingeniería.

## Objetivos de la fase

Al concluir la fase, el equipo debe comprender el dominio y sus límites, identificar y clasificar a los interesados, establecer vocabulario común, describir los procesos actuales y objetivo, identificar reglas, supuestos y riesgos, y delimitar el alcance verificable del MVP.

## Resultados esperados

| Objetivo | Resultado verificable |
| --- | --- |
| Comprender el dominio | Domain Overview aprobado y glosario canónico publicado. |
| Identificar interesados | Catálogo clasificado, con estrategia de participación para los interesados críticos. |
| Delimitar el MVP | Product Vision, Lean Canvas y exclusiones explícitas aprobados. |
| Formalizar comportamiento de negocio | Procesos TO-BE y reglas de negocio trazables y revisados. |
| Gestionar incertidumbre | Supuestos, riesgos e hipótesis con propietario y plan de validación. |
| Gobernar la documentación | Principios, arquitectura documental y registro de decisiones publicados. |

## Alcance

La fase documentará el contexto, problema, propuesta de valor y límites del MVP; el modelo Lean Canvas y sus experimentos; actores y su influencia; fuentes y método de elicitación; lenguaje ubicuo; procesos actuales y objetivo; reglas de negocio, supuestos y riesgos con identificadores estables; y una visión conceptual del dominio.

No especifica interfaces, modelo de datos, endpoints, diseño técnico, ni requisitos detallados; estos quedan para SRS y SDD.

## Entregables

Los artefactos de la fase se alojarán de forma autocontenida en `Moira-Reservations-Docs/01-business-discovery-and-analysis`:

- `README.md`: índice, estado de madurez, objetivos, métricas y criterios de salida.
- `01-Product-Vision.md`: referencia de problema, objetivos, alcance y métricas.
- `02-Lean-Canvas.md`: hipótesis de negocio, experimento, resultado y conclusión para cada validación.
- `03-Stakeholders.md`: interesados primarios, secundarios, externos, regulatorios y técnicos; con objetivos, influencia y estrategia de participación.
- `04-Discovery-and-Elicitation.md`: objetivos, fuentes, técnicas, evidencias y sesiones de descubrimiento.
- `05-Glossary.md`: términos de negocio canónicos y términos a evitar.
- `06-Business-Processes.md`: flujos AS-IS y TO-BE para reserva, cancelación y atención de lista de espera.
- `07-Business-Rules.md`: reglas `BR-xxx` con nombre, descripción, justificación, prioridad, fuente, actor, impacto, estado y referencias.
- `08-Assumptions.md`: supuestos `A-xxx`, con impacto, evidencia requerida y estado de validación.
- `09-Discovery-Risks.md`: riesgos `R-xxx`, con probabilidad, impacto, mitigación, propietario y estado.
- `10-Domain-Overview.md`: conceptos y relaciones de negocio, sin clases ni decisión técnica.
- `11-Out-of-Scope.md`: exclusiones explícitas de MVP y su justificación.

Los documentos raíz existentes se conservarán durante la transición como fuentes de referencia; su traslado o sustitución solo se realizará durante la implementación aprobada.

Antes de producir requisitos funcionales, se establecerán los siguientes artefactos de gobierno en `00-governance`:

- `Documentation-Principles.md`: principios obligatorios de fuente única de verdad, no duplicación, identificadores únicos, ADR para decisiones técnicas, trazabilidad, propiedad documental y revisión de cambios.
- `Documentation-Architecture.md`: catálogo de artefactos, propietarios, dependencias, fuentes de verdad y evolución documental.
- `Documentation-Lifecycle.md`: estados Draft, Review, Approved, Implemented, Deprecated y Archived; con sus transiciones permitidas.
- `Decision-Log.md`: registro de decisiones no arquitectónicas con fecha, decisión, estado, ADR relacionado e impacto.
- `Review-Process.md`: roles de revisión, aprobadores, permisos de modificación y artefactos que requieren aprobación.
- `Document-Template.md`: plantilla con metadatos, dependencias, referencias e historial de cambios obligatorios.

## Arquitectura documental objetivo

`Moira-Reservations-Docs` actúa como raíz documental mientras no exista un repositorio de producto. Cuando exista, su contenido se ubicará bajo `docs/` sin alterar la estructura interna:

```text
docs/
├── 00-governance/
├── 01-business-discovery-and-analysis/
├── 02-requirements-engineering/
├── 03-software-design/
├── 04-architecture/
├── 05-adrs/
├── 06-testing/
├── 07-devops/
├── 08-project-management/
├── 09-operations/
├── api/
├── diagrams/
└── specs/
```

`02-requirements-engineering` contendrá primero `Requirements-Methodology.md`, que define identificación, redacción, relación con casos de uso, historias, criterios de aceptación, versionado, deprecación y trazabilidad de requisitos. Solo después se elaborará el SRS y sus artefactos asociados. `03-software-design` contendrá el SDD y los modelos, contratos y diagramas de diseño que le correspondan.

Los flujos AS-IS/TO-BE se versionan como Mermaid. UML y C4 se producirán en PlantUML, usando C4-PlantUML para los diagramas C4, y se alojarán en `diagrams/`. Mermaid no se empleará para casos de uso, clases, componentes, despliegue ni C4.

## Dependencias

Esta fase constituye la línea base documental del proyecto y no depende de artefactos funcionales o técnicos previos. Parte del problema de negocio identificado y las fases posteriores consumen los siguientes resultados:

- Requirements Engineering (incluido el SRS): la metodología de requisitos aprobada, Product Vision, Business Rules, Glossary, Domain Overview, Out of Scope y procesos TO-BE.
- SDD y Architecture: SRS aprobado, Domain Overview, Business Rules y restricciones relevantes.
- Testing: requisitos trazables, reglas y criterios de aceptación de las fases previas.
- DevOps y Operations: decisiones de arquitectura aprobadas y requisitos no funcionales.

## Restricciones conocidas

- La documentación debe ser texto versionable y revisable mediante pull request cuando exista control de versiones.
- Los artefactos deben mantener la separación entre necesidad de negocio (Business Analysis), comportamiento esperado (SRS) y diseño de la solución (SDD/Architecture).
- El MVP parte de un monolito modular, multitenant y con evolución guiada por métricas, conforme a la visión de arquitectura existente.
- Las herramientas, tamaño del equipo, cadencia de sprint y stack tecnológico se registrarán como restricciones únicamente cuando sean confirmadas por sus propietarios; no se infieren de esta fase.

## Convenciones y trazabilidad

- Todo documento debe incluir, como mínimo, versión, estado, propietario, clasificación, confidencialidad, revisores, aprobadores, fecha de actualización y próxima revisión.
- Cada regla tiene un identificador único `BR-xxx` y se cita desde los procesos y el futuro SRS. Un supuesto usa `A-xxx` y un riesgo `R-xxx`.
- Los procesos se expresan en texto y diagramas Mermaid para que puedan revisarse en Git y evolucionar sin una herramienta propietaria.
- El glosario establece nombres canónicos; los documentos posteriores deben reutilizarlos.
- Las hipótesis del Lean Canvas no se presentan como hechos: registran experimento, resultado y conclusión de validación.
- Las referencias entre documentos usan rutas relativas y nombres de identificadores, evitando duplicar definiciones.
- `10-Domain-Overview.md` describe únicamente significado y lenguaje de los conceptos de negocio; no contiene atributos, cardinalidades, clases, tablas ni relaciones técnicas.

## Límites de negocio iniciales y fuera de alcance

Moira Reservations es un SaaS multitenant para negocios que reservan servicios o recursos. El MVP cubre organización, sucursal, recursos/profesionales, catálogo de servicios, disponibilidad, reserva, cambios, cancelaciones, lista de espera, reasignación y preferencias de notificación. Quedan fuera de alcance inicial pagos, ERP/CRM, marketplace público, facturación electrónica, BI, IA, aplicación móvil nativa y optimización predictiva.

## Calidad y validación

Antes de entregar se comprobará que:

- el 100 % de los archivos están enlazados desde el índice;
- el 100 % de las reglas citadas por procesos existen, están enlazadas y no se contradicen;
- el 100 % de los términos relevantes reutilizan el glosario;
- el 100 % de los procesos TO-BE citan reglas o supuestos aplicables;
- existen cero enlaces rotos, definiciones duplicadas o marcadores `TODO`;
- las definiciones de negocio coinciden con la visión y el SRS semilla.

## Criterios de salida

La fase se cierra cuando los interesados prioritarios han revisado los artefactos aplicables; las hipótesis relevantes cuentan con una decisión o experimento planificado; las reglas, supuestos y riesgos están identificados y tienen propietario; el glosario y procesos TO-BE alcanzan la calidad definida; y Product Owner y Architecture Review aprueban el cierre.

## Criterios de aceptación

La fase será aceptada cuando todos los entregables definidos existan y estén indexados; no haya conflictos de negocio abiertos; los interesados críticos hayan aprobado sus artefactos relevantes; y toda regla, supuesto, riesgo y proceso tenga la trazabilidad indicada en las convenciones.

## Métricas de éxito

- 100 % de los procesos de reserva, cambio, cancelación y lista de espera identificados y revisados.
- 100 % de los interesados críticos identificados y con participación planificada.
- 100 % de las reglas de negocio priorizadas y con fuente.
- 0 conflictos de negocio abiertos al cierre.
- 100 % de las hipótesis críticas con experimento o decisión registrada.
- 100 % de cobertura de trazabilidad de la línea base: cada regla, supuesto y riesgo tiene propietario y referencia al proceso o hipótesis aplicable. La arquitectura documental define su extensión obligatoria a requisito y prueba en las fases posteriores.
- 100 % de cobertura de revisión: cada entregable tiene revisores y aprobación registrada conforme a su estado.

## Gestión de cambios

Todo cambio documental debe justificar el motivo, identificar los artefactos e identificadores afectados, actualizar la trazabilidad, registrar su impacto y pasar la revisión definida para el documento. Las decisiones menores se registran en el Decision Log; las decisiones arquitectónicas se registran mediante ADR.

## Architectural Decision

Referencia: `ADR-001 Documentation Strategy`.

## Referencias

- ISO/IEC/IEEE 42010, *Systems and software engineering — Architecture description*.
- ISO/IEC/IEEE 29148, *Requirements engineering*.
- IIBA, *A Guide to the Business Analysis Body of Knowledge (BABOK Guide), v3*.
- *The Scrum Guide*.
