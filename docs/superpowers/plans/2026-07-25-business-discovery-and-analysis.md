# Business Discovery & Analysis Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Establecer la gobernanza documental y publicar la línea base completa de Business Discovery & Analysis de Moira Reservations, trazable y preparada para Requirements Engineering.

**Architecture:** Se conserva `Moira-Reservations-Docs` como raíz documental actual y se introducen `00-governance/` y `01-business-discovery-and-analysis/` sin borrar los documentos semilla de la raíz. Los documentos de gobierno definen el ciclo de vida, plantilla, revisión, decisiones y trazabilidad; los documentos de negocio usan esa plantilla y enlazan reglas (`BR-xxx`), supuestos (`A-xxx`) y riesgos (`R-xxx`). Mermaid se limita a procesos de negocio; el plan no crea UML, C4, SRS ni diseño técnico.

**Tech Stack:** Markdown CommonMark, Mermaid para AS-IS/TO-BE, PowerShell para validación de enlaces y convenciones. PlantUML/C4-PlantUML queda reservado para fases posteriores.

---

## Estructura de archivos objetivo

| Ruta | Responsabilidad |
| --- | --- |
| `Moira-Reservations-Docs/README.md` | Índice de la raíz documental, estado y transición desde el esqueleto. |
| `Moira-Reservations-Docs/00-governance/Documentation-Principles.md` | Principios vinculantes de documentación. |
| `Moira-Reservations-Docs/00-governance/Documentation-Architecture.md` | Artefactos, propietarios, dependencias, fuentes de verdad y trazabilidad. |
| `Moira-Reservations-Docs/00-governance/Documentation-Lifecycle.md` | Estados y transiciones de cada documento. |
| `Moira-Reservations-Docs/00-governance/Decision-Log.md` | Registro de decisiones no arquitectónicas. |
| `Moira-Reservations-Docs/00-governance/Review-Process.md` | Revisión, aprobación y permisos de modificación. |
| `Moira-Reservations-Docs/00-governance/Document-Template.md` | Formato obligatorio de nuevos documentos. |
| `Moira-Reservations-Docs/01-business-discovery-and-analysis/README.md` | Índice, objetivos, métricas y criterios de salida de la fase. |
| `.../01-Product-Vision.md` | Problema, resultado, alcance, métricas y exclusiones del MVP. |
| `.../02-Lean-Canvas.md` | Canvas y registro de hipótesis/experimentos. |
| `.../03-Stakeholders.md` | Catálogo clasificado y estrategia de participación. |
| `.../04-Discovery-and-Elicitation.md` | Fuentes, técnicas, sesiones y tratamiento de evidencia. |
| `.../05-Glossary.md` | Lenguaje ubicuo y términos a evitar. |
| `.../06-Business-Processes.md` | AS-IS/TO-BE de reserva, cancelación y lista de espera. |
| `.../07-Business-Rules.md` | Catálogo `BR-xxx` con metadatos y referencias. |
| `.../08-Assumptions.md` | Catálogo `A-xxx` y plan de validación. |
| `.../09-Discovery-Risks.md` | Catálogo `R-xxx` y mitigación. |
| `.../10-Domain-Overview.md` | Conceptos del negocio sin modelo técnico. |
| `.../11-Out-of-Scope.md` | Exclusiones explícitas del MVP. |
| `Moira-Reservations-Docs/00-governance/validate-documentation.ps1` | Comprobación reproducible de estructura, metadatos y referencias de la fase. |

### Task 1: Crear el gobierno y la plantilla documental

**Files:**
- Create: `Moira-Reservations-Docs/00-governance/Documentation-Principles.md`
- Create: `Moira-Reservations-Docs/00-governance/Documentation-Lifecycle.md`
- Create: `Moira-Reservations-Docs/00-governance/Review-Process.md`
- Create: `Moira-Reservations-Docs/00-governance/Document-Template.md`

- [ ] **Step 1: Crear los cuatro documentos con la cabecera obligatoria**

Usar en cada archivo esta tabla, con `Estado: Draft`, `Clasificación: Internal`, `Confidencialidad: Uso interno del proyecto`, `Revisores: Product Owner, Architecture Review` y `Aprobadores: Product Owner, Architecture Review Board`:

```markdown
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
```

- [ ] **Step 2: Escribir los principios y el ciclo de vida**

`Documentation-Principles.md` debe declarar exactamente: fuente única de verdad; no duplicación; identificador único; requisito con ID; regla con fuente; decisión arquitectónica mediante ADR; historia derivada de caso de uso; caso de uso derivado de necesidad de negocio; propietario de cada documento; y cambio revisado.

`Documentation-Lifecycle.md` debe definir la secuencia `Draft → Review → Approved → Implemented → Deprecated → Archived`, el significado de cada estado, el responsable de cada transición y que `Deprecated` conserva trazabilidad hacia su sustituto.

- [ ] **Step 3: Escribir el proceso de revisión y la plantilla**

`Review-Process.md` debe establecer que el autor puede editar Draft; los revisores pueden solicitar cambios; Product Owner aprueba contenido de negocio; Architecture Review aprueba arquitectura y gobierno; y ningún artefacto en estado Approved se modifica sin nueva revisión.

`Document-Template.md` debe incluir la tabla de metadatos, secciones `Propósito`, `Alcance`, `Dependencias`, `Referencias`, `Historial de cambios` y una tabla de historial con columnas Fecha, Versión, Cambio y Autor.

- [ ] **Step 4: Verificar los documentos de gobierno**

Run:

```powershell
Get-ChildItem 'Moira-Reservations-Docs\00-governance' -Filter '*.md' | Select-Object -ExpandProperty Name
```

Expected: se muestran los cuatro archivos creados, sin archivos vacíos.

### Task 2: Definir la arquitectura documental y el registro de decisiones

**Files:**
- Create: `Moira-Reservations-Docs/00-governance/Documentation-Architecture.md`
- Create: `Moira-Reservations-Docs/00-governance/Decision-Log.md`

- [ ] **Step 1: Redactar Documentation Architecture sin repetir los principios**

Incluir una tabla con columnas `Artefacto`, `Propietario`, `Depende de`, `Fuente de verdad`, `Consumidores` y `Estado inicial`. Debe listar al menos: Business Discovery & Analysis, Requirements Engineering, Software Design, Architecture, ADRs, Testing, DevOps y Operations. Declarar que `05-Glossary.md` es fuente de verdad de términos de negocio; `07-Business-Rules.md` de reglas; los ADR de decisiones arquitectónicas; y Decision Log de decisiones no arquitectónicas.

- [ ] **Step 2: Definir el modelo de trazabilidad**

Documentar la cadena `Problema/Vision → Proceso o Regla → Requisito → Caso de uso → Historia → Prueba`, aclarando que esta fase solo entrega hasta Proceso o Regla y que Requirements Engineering completa los eslabones restantes. Incluir que toda referencia se realiza por identificador, no por copia de texto.

- [ ] **Step 3: Crear Decision Log con la primera decisión documental**

Crear una tabla `ID`, `Fecha`, `Decisión`, `Estado`, `ADR relacionado`, `Impacto` y registrar `DL-001`: adoptar estructura por fases y documentos de texto versionables; estado `Accepted`; ADR relacionado `ADR-001 Documentation Strategy`; impacto: migración no destructiva y enlaces mediante rutas relativas.

- [ ] **Step 4: Verificar la trazabilidad declarada**

Run:

```powershell
Select-String -Path 'Moira-Reservations-Docs\00-governance\Documentation-Architecture.md' -Pattern 'Problema/Vision','Proceso o Regla','Requisito','Caso de uso','Historia','Prueba'
```

Expected: seis coincidencias que cubren la cadena de trazabilidad.

### Task 3: Crear el índice raíz y el marco de la fase

**Files:**
- Modify: `Moira-Reservations-Docs/README.md`
- Create: `Moira-Reservations-Docs/01-business-discovery-and-analysis/README.md`

- [ ] **Step 1: Convertir el README raíz en un índice de sistema documental**

Mantener una sección `Documentos semilla heredados` que enumere los once Markdown existentes en la raíz. Añadir secciones `Gobierno`, `Fases`, `Convención de estados` y `Transición`. En `Fases`, enlazar `00-governance/` y `01-business-discovery-and-analysis/`; indicar que Requirements Engineering, Software Design, Architecture, ADRs, Testing, DevOps, Project Management y Operations son carpetas objetivo aún no creadas.

- [ ] **Step 2: Crear el README de Business Discovery & Analysis**

Incluir objetivos, resultados esperados, alcance, dependencias, métricas de éxito, criterios de aceptación y criterios de salida definidos en la especificación aprobada. Enlazar los once entregables de la fase y declarar que el SRS, UML, C4, API, modelo de datos y decisiones técnicas están fuera de esta fase.

- [ ] **Step 3: Verificar el índice de la fase**

Run:

```powershell
Select-String -Path 'Moira-Reservations-Docs\01-business-discovery-and-analysis\README.md' -Pattern '01-Product-Vision.md','11-Out-of-Scope.md','Criterios de salida','Métricas de éxito'
```

Expected: cuatro grupos de coincidencias; el índice contiene ambos extremos de la secuencia y los controles de fase.

### Task 4: Elaborar visión de producto, Lean Canvas y exclusiones

**Files:**
- Create: `Moira-Reservations-Docs/01-business-discovery-and-analysis/01-Product-Vision.md`
- Create: `Moira-Reservations-Docs/01-business-discovery-and-analysis/02-Lean-Canvas.md`
- Create: `Moira-Reservations-Docs/01-business-discovery-and-analysis/11-Out-of-Scope.md`

- [ ] **Step 1: Escribir Product Vision a partir del documento semilla**

Formalizar el problema: gestión por WhatsApp/agendas físicas, cancelaciones, doble reserva y baja utilización. Definir usuarios objetivo: pequeños negocios con empleados o recursos reservables. Definir capacidades MVP: organizaciones, sucursales, servicios, recursos/profesionales, disponibilidad, reservas, cambios, cancelaciones, lista de espera, reasignación y preferencias de notificación. Definir métricas de negocio como disminución de dobles reservas, disminución de no-shows y aumento de ocupación; marcarlas como métricas a baselinar, no como resultados logrados.

- [ ] **Step 2: Escribir Lean Canvas con hipótesis verificables**

Cubrir Problemas, Segmentos de clientes, Propuesta de valor única, Solución, Canales, Fuentes de ingreso, Estructura de costes, Métricas clave y Ventaja injusta. Añadir una tabla de validación para `H-001` (negocios sufren doble reserva/cancelaciones), `H-002` (clientes aceptan recordatorios multicanal), `H-003` (la lista de espera mejora ocupación), con columnas Hipótesis, Experimento, Señal de éxito, Resultado, Conclusión y Estado. Inicializar Resultado como `Sin ejecutar`, Conclusión como `Pendiente de evidencia` y Estado como `Planned`.

- [ ] **Step 3: Escribir Out of Scope sin ambigüedad**

Excluir pagos, ERP/CRM, marketplace, facturación electrónica, BI, IA, aplicación móvil nativa y optimización predictiva. Para cada exclusión indicar la razón: no es necesaria para validar el problema de reserva en el MVP o añade complejidad ajena al alcance.

- [ ] **Step 4: Verificar límites del MVP**

Run:

```powershell
Select-String -Path 'Moira-Reservations-Docs\01-business-discovery-and-analysis\01-Product-Vision.md','Moira-Reservations-Docs\01-business-discovery-and-analysis\11-Out-of-Scope.md' -Pattern 'lista de espera','pagos','marketplace','aplicación móvil nativa'
```

Expected: las capacidades y las cuatro exclusiones aparecen en los documentos correctos.

### Task 5: Documentar interesados y el método de descubrimiento

**Files:**
- Create: `Moira-Reservations-Docs/01-business-discovery-and-analysis/03-Stakeholders.md`
- Create: `Moira-Reservations-Docs/01-business-discovery-and-analysis/04-Discovery-and-Elicitation.md`

- [ ] **Step 1: Crear el catálogo clasificado de stakeholders**

Clasificar: primarios (Administrador, Recepcionista, Profesional, Cliente); secundarios (propietario del negocio y equipo operativo); externos (proveedores de mensajería); regulatorios (autoridad de protección de datos aplicable); técnicos (equipo de producto, Architecture Review y operaciones). Para cada uno registrar objetivo, influencia, necesidad de información, estrategia de participación y artefactos que debe revisar.

- [ ] **Step 2: Definir elicitación y evidencia**

Incluir objetivos de descubrir flujo de reserva, políticas de cancelación, disponibilidad, comunicación y lista de espera. Definir entrevistas semiestructuradas a administradores/recepcionistas/profesionales/clientes, observación del proceso actual, revisión de agendas y prototipos de flujo como técnicas. Definir que la evidencia se identifica `EV-xxx`, incluye fuente, fecha, hallazgo, confianza y documentos afectados; ningún hallazgo se convierte en regla sin fuente y revisión.

- [ ] **Step 3: Añadir un primer backlog de sesiones**

Registrar `EV-PLAN-001` a `EV-PLAN-004` con objetivo y participante: operación de agenda (Administrador), creación y cambios (Recepcionista), disponibilidad (Profesional), y recordatorios/cancelaciones (Cliente). Marcar todas como `Planned`, no como entrevistas ejecutadas.

- [ ] **Step 4: Verificar clasificación y evidencia**

Run:

```powershell
Select-String -Path 'Moira-Reservations-Docs\01-business-discovery-and-analysis\03-Stakeholders.md','Moira-Reservations-Docs\01-business-discovery-and-analysis\04-Discovery-and-Elicitation.md' -Pattern 'Primarios','Secundarios','Externos','Regulatorios','Técnicos','EV-PLAN-004'
```

Expected: las cinco clases y la cuarta sesión planificada están presentes.

### Task 6: Establecer el lenguaje ubicuo y la visión de dominio

**Files:**
- Create: `Moira-Reservations-Docs/01-business-discovery-and-analysis/05-Glossary.md`
- Create: `Moira-Reservations-Docs/01-business-discovery-and-analysis/10-Domain-Overview.md`

- [ ] **Step 1: Crear el glosario canónico**

Definir, al menos: Organización, Sucursal, Administrador, Recepcionista, Profesional, Recurso reservable, Servicio, Cliente, Disponibilidad, Franja horaria, Reserva, Reprogramación, Cancelación, Lista de espera, Reasignación automática, Canal de notificación y Preferencia de notificación. Para cada término incluir definición, sinónimo permitido si existe, término a evitar y fuente. Establecer que `empresa`, `negocio` y `organización` se normalizan a `Organización` salvo en texto comercial.

- [ ] **Step 2: Escribir la visión conceptual del dominio**

Describir en lenguaje de negocio cómo una Organización opera Sucursales; una Sucursal ofrece Servicios a través de Profesionales o Recursos reservables; un Cliente solicita una Reserva dentro de una Franja de Disponibilidad; una Cancelación puede activar una Lista de espera y una Reasignación automática; y las Preferencias determinan el Canal de notificación. No incluir atributos, cardinalidades, tablas, clases, endpoints o decisiones técnicas.

- [ ] **Step 3: Añadir control de límites al Domain Overview**

Incluir la sección `No es un modelo técnico` y enumerar las exclusiones: diagrama de clases, esquema de base de datos, interfaces, campos, cardinalidades y componentes.

- [ ] **Step 4: Verificar el lenguaje de negocio**

Run:

```powershell
Select-String -Path 'Moira-Reservations-Docs\01-business-discovery-and-analysis\05-Glossary.md','Moira-Reservations-Docs\01-business-discovery-and-analysis\10-Domain-Overview.md' -Pattern 'Organización','Recurso reservable','Lista de espera','No es un modelo técnico'
```

Expected: los conceptos canónicos y el límite de diseño técnico aparecen.

### Task 7: Describir procesos de negocio y reglas trazables

**Files:**
- Create: `Moira-Reservations-Docs/01-business-discovery-and-analysis/06-Business-Processes.md`
- Create: `Moira-Reservations-Docs/01-business-discovery-and-analysis/07-Business-Rules.md`

- [ ] **Step 1: Describir AS-IS y TO-BE**

Para creación de reserva, cancelación y lista de espera, documentar: disparador, participantes, flujo AS-IS, problemas observados, flujo TO-BE, resultados y reglas aplicables. Añadir un diagrama Mermaid por proceso TO-BE. El proceso de reserva valida organización, disponibilidad y ausencia de conflicto; el de cancelación libera franja y evalúa lista de espera; el de lista de espera prioriza candidatos y solicita confirmación antes de reasignar.

- [ ] **Step 2: Crear reglas de negocio con metadatos completos**

Crear las reglas `BR-001` a `BR-010`: aislamiento por organización; pertenencia de sucursal; disponibilidad previa; ausencia de doble reserva; duración según servicio; cambio antes de la hora de inicio; cancelación y liberación de franja; activación de lista de espera; confirmación antes de reasignación; y preferencia de canal de notificación. Cada regla debe tener Nombre, Descripción, Justificación, Prioridad, Fuente, Actor, Impacto, Estado y Referencias.

- [ ] **Step 3: Crear enlaces bidireccionales entre procesos y reglas**

Cada flujo TO-BE debe citar los `BR-xxx` aplicables. Cada regla debe incluir la referencia al proceso correspondiente. Usar texto de referencia con rutas relativas, por ejemplo `[Proceso de reserva](06-Business-Processes.md#proceso-to-be-crear-reserva)`.

- [ ] **Step 4: Verificar cobertura proceso-regla**

Run:

```powershell
$process = Get-Content -Raw 'Moira-Reservations-Docs\01-business-discovery-and-analysis\06-Business-Processes.md'
$rules = Get-Content -Raw 'Moira-Reservations-Docs\01-business-discovery-and-analysis\07-Business-Rules.md'
$referenced = [regex]::Matches($process, 'BR-\d{3}') | ForEach-Object Value | Sort-Object -Unique
$missing = $referenced | Where-Object { $rules -notmatch $_ }
if ($missing) { $missing; exit 1 }
"Reglas de procesos verificadas: $($referenced.Count)"
```

Expected: exit code 0 y el número de reglas referenciadas.

### Task 8: Registrar supuestos y riesgos de descubrimiento

**Files:**
- Create: `Moira-Reservations-Docs/01-business-discovery-and-analysis/08-Assumptions.md`
- Create: `Moira-Reservations-Docs/01-business-discovery-and-analysis/09-Discovery-Risks.md`

- [ ] **Step 1: Crear catálogo de supuestos**

Registrar `A-001` acceso a internet del negocio; `A-002` acceso del cliente a canal de notificación; `A-003` reserva perteneciente a una sola organización; `A-004` administración propia de catálogo por el negocio. Para cada uno incluir descripción, impacto si es falso, evidencia requerida, propietario, estado y referencias. Marcar como `Unvalidated` salvo evidencia explícita.

- [ ] **Step 2: Crear catálogo de riesgos**

Registrar `R-001` muestra insuficiente de negocios; `R-002` validación insuficiente de hipótesis; `R-003` sesgo del equipo; `R-004` hipótesis incorrectas sobre necesidades; `R-005` políticas de cancelación heterogéneas. Para cada riesgo incluir probabilidad, impacto, mitigación concreta, propietario, disparador y estado.

- [ ] **Step 3: Vincular incertidumbres con su tratamiento**

Vincular A-001/A-002 y R-001/R-002 a las sesiones `EV-PLAN-001` a `EV-PLAN-004`; vincular A-003 a `BR-001`; vincular R-005 al proceso de cancelación. No marcar ningún supuesto o riesgo como resuelto sin evidencia.

- [ ] **Step 4: Verificar identificadores y estados**

Run:

```powershell
Select-String -Path 'Moira-Reservations-Docs\01-business-discovery-and-analysis\08-Assumptions.md','Moira-Reservations-Docs\01-business-discovery-and-analysis\09-Discovery-Risks.md' -Pattern 'A-001','A-004','R-001','R-005','Unvalidated','Planned'
```

Expected: los identificadores y estados de validación están presentes.

### Task 9: Añadir validación automatizada y cerrar la revisión de la fase

**Files:**
- Create: `Moira-Reservations-Docs/00-governance/validate-documentation.ps1`
- Modify: `Moira-Reservations-Docs/README.md`
- Modify: `Moira-Reservations-Docs/01-business-discovery-and-analysis/README.md`

- [ ] **Step 1: Crear el validador de documentación**

El script debe: comprobar los 19 Markdown esperados (6 de gobierno, README raíz, README de fase y 11 entregables de Business Discovery); exigir las nueve etiquetas de metadatos en cada Markdown nuevo; comprobar que el README de fase referencia sus once entregables; y comprobar que todo identificador `BR-xxx` citado en procesos existe en Business Rules. Debe escribir `PASS` por cada control y terminar con `exit 1` si alguno falla.

Usar la siguiente estructura de control:

```powershell
$errors = @()
function Assert-Contains {
    param([string]$Text, [string]$Needle, [string]$Label)
    if ($Text -notmatch [regex]::Escape($Needle)) { $script:errors += "FAIL: $Label" }
    else { "PASS: $Label" }
}
# ejecutar comprobaciones
if ($errors.Count -gt 0) { $errors; exit 1 }
'PASS: documentation validation complete'
```

- [ ] **Step 2: Añadir instrucciones de validación al índice raíz**

En `README.md`, incluir la orden:

```powershell
powershell -ExecutionPolicy Bypass -File .\00-governance\validate-documentation.ps1
```

e indicar que toda modificación debe ejecutar el validador y pasar la revisión definida en `Review-Process.md`.

- [ ] **Step 3: Ejecutar la validación completa**

Run:

```powershell
powershell -ExecutionPolicy Bypass -File .\Moira-Reservations-Docs\00-governance\validate-documentation.ps1
```

Expected: todos los controles emiten `PASS` y el proceso termina con exit code 0.

- [ ] **Step 4: Realizar la revisión de salida de la fase**

Comprobar manualmente los criterios: índices completos; metadatos en cada documento nuevo; procesos TO-BE con reglas; reglas con fuente y estado; hipótesis, supuestos y riesgos sin presentarse como evidencia; y exclusiones explícitas. Cambiar a `Review` los documentos que se sometan a Product Owner y Architecture Review; solo cambiar a `Approved` tras registrar la aprobación real.

## Verificación final del plan

- La gobernanza cubre principios, arquitectura documental, ciclo de vida, decisiones, revisión y plantilla (Tasks 1–2).
- La Fase 1 cubre visión, Lean Canvas, interesados, elicitación, glosario, procesos, reglas, supuestos, riesgos, visión de dominio y exclusiones (Tasks 3–8).
- La trazabilidad, el control de cambios y la validación reproducible se cubren en Tasks 2, 7 y 9.
- La estructura futura y la metodología de Requirements Engineering se establecen en Task 2 y en la arquitectura documental.
- No se incluye implementación de SRS, SDD, UML, C4, API, modelo de datos ni infraestructura, porque están fuera del alcance aprobado.

## Notas de control de versiones

El directorio actual no contiene un repositorio Git. No ejecutar commits ni crear una rama hasta que el usuario inicialice o conecte el repositorio. Cuando exista Git, cada tarea se debe revisar y confirmar por separado antes de un commit con alcance único.
