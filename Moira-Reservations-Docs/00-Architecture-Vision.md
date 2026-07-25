# Architecture Vision

## Proyecto
**Moira Reservations**

Plataforma SaaS multitenant para gestión de reservas de pequeños negocios (peluquerías, consultorios, canchas, etc.).

## Principios

- Simplicidad antes que sobreingeniería.
- Seguridad por defensa en profundidad.
- Escalabilidad evolutiva.
- Monolito modular para MVP.
- Decisiones registradas mediante ADR.
- Trazabilidad completa entre visión, requisitos, diseño y pruebas.

## Conclusiones de los debates

1. Separación estricta entre SRS (qué) y SDD (cómo).
2. Multitenencia como requisito transversal, no como HU aislada.
3. RLS como última barrera; autorización en la aplicación.
4. Evolución arquitectónica basada en métricas y atributos de calidad, no intuición.
5. QA valida requisitos observables mediante trazabilidad, no inspección del código.
