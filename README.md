# Portafolio Web Personal

Un portafolio de desarrollo web con enfoque `frontend + backend`, pensado para crecer de forma ordenada y mostrar proyectos, blog y formulario de contacto funcionando sobre `PHP + MySQL`.

## Que incluye este proyecto

- `Frontend` con pagina principal, blog y seccion de portafolio.
- `Backend` en PHP para procesar formularios.
- `Base de datos` MySQL con tablas para contactos y publicaciones del blog.
- `Estructura limpia` separada en carpetas para que sea mas facil mantener y ampliar.

## Estructura del proyecto

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
│   ├── portafolio/
│   ├── scripts/
│   ├── styles/
│   ├── blog.html
│   └── index.html
├── index.php
└── README.md
```

## Mapa rapido de carpetas

- `frontend/`: todo lo visual y navegable del sitio.
- `backend/config/`: conexion y configuracion.
- `backend/handlers/`: logica del servidor, como el formulario.
- `backend/database/`: scripts SQL de la base de datos.
- `docs/`: documentacion interna del proyecto.

## Como ponerlo en marcha

Este proyecto esta pensado para ejecutarse con `XAMPP`, usando `Apache` y `MySQL`.

### 1. Coloca el proyecto en `htdocs`

Ruta esperada:

```text
/xampp/htdocs/2026_Portafolio
```

### 2. Inicia Apache y MySQL

Desde el panel de `XAMPP`, activa:

- `Apache`
- `MySQL`

### 3. Crea e importa la base de datos

El archivo SQL ya viene preparado en esta carpeta:

[`backend/database/contactos.sql`](/mnt/c/xampp/htdocs/2026_Portafolio/backend/database/contactos.sql)

Ese script:

- crea la base de datos `formulario_contacto`
- crea las tablas necesarias
- inserta publicaciones iniciales para el blog

Puedes importarlo de dos maneras.

#### Opcion A: Desde phpMyAdmin

1. Abre `http://localhost/phpmyadmin`
2. Ve a la pestaña `Importar`
3. Selecciona el archivo `backend/database/contactos.sql`
4. Ejecuta la importacion

No hace falta crear la base manualmente antes, porque el propio script ya incluye:

```sql
CREATE DATABASE IF NOT EXISTS formulario_contacto;
USE formulario_contacto;
```

#### Opcion B: Desde consola MySQL

Si prefieres hacerlo por terminal:

```bash
mysql -u root -p < backend/database/contactos.sql
```

Si tu usuario `root` en XAMPP no tiene contrasena, normalmente bastara con:

```bash
mysql -u root < backend/database/contactos.sql
```

## Punto de entrada

Abre el proyecto desde:

```text
http://localhost/2026_Portafolio/
```

El archivo de entrada es:

- [`index.php`](/mnt/c/xampp/htdocs/2026_Portafolio/index.php) que redirige a [`frontend/index.html`](/mnt/c/xampp/htdocs/2026_Portafolio/frontend/index.html)

## Archivos clave

- [`frontend/index.html`](/mnt/c/xampp/htdocs/2026_Portafolio/frontend/index.html): pagina principal del portafolio.
- [`frontend/blog.html`](/mnt/c/xampp/htdocs/2026_Portafolio/frontend/blog.html): indice del blog.
- [`backend/config/conexion.php`](/mnt/c/xampp/htdocs/2026_Portafolio/backend/config/conexion.php): conexion PDO con MySQL.
- [`backend/handlers/insertar.php`](/mnt/c/xampp/htdocs/2026_Portafolio/backend/handlers/insertar.php): procesa el formulario de contacto.
- [`backend/database/contactos.sql`](/mnt/c/xampp/htdocs/2026_Portafolio/backend/database/contactos.sql): estructura y datos iniciales.

## Nota importante

Para probar el backend, usa `Apache` en XAMPP.

`Live Server` puede servir para revisar HTML y CSS, pero no ejecuta `PHP`, asi que no valida formularios, conexion ni logica del servidor.

## Sitemap

Puedes consultar el mapa del sitio en [`docs/sitemap.md`](/mnt/c/xampp/htdocs/2026_Portafolio/docs/sitemap.md).

## En una frase

Un portafolio con base tecnica real: interfaz, servidor, base de datos y una estructura preparada para seguir creciendo.
