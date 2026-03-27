# Portafolio Web Personal

Portafolio personal de Rosalee Castro organizado con una base escalable separada en `frontend` y `backend`.

## Estructura profesional actual

```text
2026_Portafolio/
├── backend/
│   ├── config/
│   │   └── conexion.php
│   ├── database/
│   │   └── contactos.sql
│   └── handlers/
│       └── insertar.php
├── docs/
│   └── sitemap.md
├── frontend/
│   ├── assets/
│   │   ├── icons/
│   │   ├── images/
│   │   └── video/
│   ├── blog/
│   │   ├── componentes-reutilizables.html
│   │   ├── construyendo-perfil-desarrolladora.html
│   │   └── frontend-api-base-datos.html
│   ├── portafolio/
│   │   ├── gestor-tareas-api.html
│   │   ├── panel-catalogo-digital.html
│   │   └── ticket-flow.html
│   ├── scripts/
│   │   ├── accesibilidad.js
│   │   └── tecnologias.js
│   ├── styles/
│   │   ├── accesibilidad.css
│   │   ├── construccion.css
│   │   └── style.css
│   ├── blog.html
│   └── index.html
├── index.php
└── README.md
```

## Criterio de organizacion

- `frontend/`: todo lo visual y navegable del sitio
- `backend/config/`: configuracion y conexion a servicios
- `backend/handlers/`: procesamiento de formularios y endpoints
- `backend/database/`: estructura SQL y archivos de base de datos
- `docs/`: documentacion interna del proyecto

## Frontend

- `frontend/index.html`: home principal
- `frontend/blog.html`: indice del blog
- `frontend/blog/`: entradas individuales
- `frontend/portafolio/`: paginas de proyectos
- `frontend/styles/`: hojas de estilo
- `frontend/scripts/`: JavaScript del cliente
- `frontend/assets/`: recursos visuales organizados por tipo

## Backend

- `backend/config/conexion.php`: conexion PDO con MySQL
- `backend/handlers/insertar.php`: procesa el formulario de contacto
- `backend/database/contactos.sql`: estructura de base de datos

## Punto de entrada

- `index.php`: redirige a `frontend/index.html`

Esto permite abrir el proyecto desde:

```text
http://localhost/2026_Portafolio/
```

## Como ejecutar correctamente

Usa `XAMPP/Apache` para probar el formulario y la conexion con PHP.

No uses `Live Server` para validar el backend, porque no ejecuta PHP.

## Sitemap

Consulta el mapa del sitio en [docs/sitemap.md](/mnt/c/xampp/htdocs/2026_Portafolio/docs/sitemap.md).
