# Software Design Description (SDD)

## Stack
React, Django REST Framework, PostgreSQL, ORM, Redis/Celery, Docker.

## Arquitectura
Monolito modular.
Capas: Presentación, Aplicación, Dominio, Infraestructura.

## Seguridad
JWT + RBAC + Middleware + Validación + ORM + PostgreSQL RLS.

## API
REST versionada.

## Base de datos
Shared Database + Shared Schema + tenant_id + RLS.

## Concurrencia
Transacciones ACID.
SELECT FOR UPDATE.
Restricciones UNIQUE.
Bloqueos de grano fino cuando aplique.

## CI/CD
GitHub Actions.
main protegida.
Pull Requests obligatorios.
Scrum semanal.
Taiga como backlog.
