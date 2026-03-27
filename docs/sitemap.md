# Sitemap

## Estructura publica del sitio

```text
/
├── index.php
└── frontend/
    ├── index.html
    ├── blog.html
    ├── blog/
    │   ├── componentes-reutilizables.html
    │   ├── construyendo-perfil-desarrolladora.html
    │   └── frontend-api-base-datos.html
    └── portafolio/
        ├── ticket-flow.html
        ├── gestor-tareas-api.html
        └── panel-catalogo-digital.html
```

## Jerarquia de navegacion

1. `index.php`
   Punto de entrada del proyecto. Redirige a `frontend/index.html`.

2. `frontend/index.html`
   Home principal del portafolio.

3. `#about`
   Seccion sobre mi.

4. `#tech`
   Stack de tecnologias.

5. `#projects`
   Tarjetas que enlazan a:
   - `frontend/portafolio/ticket-flow.html`
   - `frontend/portafolio/gestor-tareas-api.html`
   - `frontend/portafolio/panel-catalogo-digital.html`

6. `#blog`
   Tarjetas que enlazan a:
   - `frontend/blog/componentes-reutilizables.html`
   - `frontend/blog/frontend-api-base-datos.html`
   - `frontend/blog/construyendo-perfil-desarrolladora.html`

7. `#contact`
   Formulario conectado con `backend/handlers/insertar.php`.

## Flujo del formulario

```text
frontend/index.html
  └── POST -> backend/handlers/insertar.php
        └── backend/config/conexion.php
              └── MySQL
```
