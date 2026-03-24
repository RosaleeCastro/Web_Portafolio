# Portafolio Web Personal

Portafolio personal de Rosalee Castro, pensado para presentar perfil profesional, stack tecnologico, proyectos, blog y contacto dentro de una interfaz moderna con identidad visual morada.

El proyecto esta orientado a cumplir los requisitos de la practica o examen trabajando solo con `HTML`, `CSS`, `JavaScript`, `PHP` y conexion a base de datos SQL desde PHP.

## Descripcion

Este proyecto es una web estatica construida con HTML, CSS y JavaScript. La pagina principal funciona como home del portafolio y desde ella se puede navegar a secciones internas y a paginas individuales de blog y portafolio.

Actualmente las paginas individuales de articulos y proyectos estan preparadas como placeholders "En construccion", de modo que la arquitectura del sitio ya esta lista para crecer sin tener que reorganizar rutas mas adelante. La siguiente fase del proyecto consistira en completar el blog dinamico y el formulario de contacto con PHP, SQL y envio de correo.

## Requisitos del examen

### Enunciado

`2. Web personal - Examenes Marzo - Interfaces`

Requisitos:

- Debe tener una `home/front` orientada a interfaces
- Debe tener un `blog` conectado con SQL
- Debe tener un `formulario de contacto` con `HTML + SQL + sendmail`
- Debe tener un apartado `sobre mi` como web estatica

### Como se cubren dentro del proyecto

- `Home/front`: se trabaja en `index.html` como pagina principal visual del sitio
- `Sobre mi`: ya esta integrada como seccion estatica dentro de la home
- `Blog`: ya existe la estructura de paginas y rutas; mas adelante se conectara con PHP y SQL
- `Formulario de contacto`: ya existe la parte visual en HTML/CSS; mas adelante se completara el procesamiento con PHP, almacenamiento SQL y envio por correo

## Caracteristicas

- Seccion "Sobre mi" con presentacion profesional
- Stack de tecnologias con tarjetas animadas
- Portafolio de proyectos destacados
- Bloque de blog integrado en la pagina principal
- Navegacion desde tarjetas hacia paginas individuales
- Paginas placeholder "En construccion" para blog y portafolio
- Efecto de resplandor de puntero reutilizado en paginas internas
- Formulario de contacto con estilo visual moderno
- Script de accesibilidad
- Diseno responsive para escritorio y movil

## Tecnologias usadas

### Base actual

- HTML5
- CSS3
- JavaScript

### Stack previsto para completar el examen

- PHP
- SQL / MySQL
- Sendmail o envio de correo desde PHP

## Estructura del proyecto

```text
2026_Portafolio/
├── assets/
├── blog/
│   ├── componentes-reutilizables.html
│   ├── construyendo-perfil-desarrolladora.html
│   └── frontend-api-base-datos.html
├── estilos/
│   ├── accesibilidad.css
│   ├── construccion.css
│   └── style.css
├── portafolio/
│   ├── gestor-tareas-api.html
│   ├── panel-catalogo-digital.html
│   └── ticket-flow.html
├── script/
│   ├── accesibilidad.js
│   └── tecnologias.js
├── blog.html
├── index.html
└── README.md
```

## Navegacion actual

- `index.html` actua como pagina principal
- Cada tarjeta de `Blog` redirige a una pagina individual dentro de `blog/`
- Cada tarjeta de `Portafolio` redirige a una pagina individual dentro de `portafolio/`
- `blog.html` queda como portada o indice general del blog
- Las paginas internas muestran por ahora un estado "En construccion"

## Archivos principales

- `index.html`: pagina principal del portafolio
- `blog.html`: portada o indice general del blog
- `estilos/style.css`: estilos generales de la web
- `estilos/construccion.css`: estilo compartido para paginas placeholder "En construccion"
- `estilos/accesibilidad.css`: estilos relacionados con accesibilidad
- `script/tecnologias.js`: comportamiento visual de las tarjetas de tecnologias
- `script/accesibilidad.js`: controles y mejoras de accesibilidad
- `blog/`: paginas individuales para entradas del blog
- `portafolio/`: paginas individuales para proyectos del portafolio

## Arbol sugerido de paginas

```text
/
├── index.html
├── blog.html
├── blog/
│   ├── componentes-reutilizables.html
│   ├── frontend-api-base-datos.html
│   └── construyendo-perfil-desarrolladora.html
└── portafolio/
    ├── ticket-flow.html
    ├── gestor-tareas-api.html
    └── panel-catalogo-digital.html
```

## Paginas ya creadas

### Blog

- `blog/componentes-reutilizables.html`
- `blog/frontend-api-base-datos.html`
- `blog/construyendo-perfil-desarrolladora.html`

### Portafolio

- `portafolio/ticket-flow.html`
- `portafolio/gestor-tareas-api.html`
- `portafolio/panel-catalogo-digital.html`

## Como visualizar el proyecto

1. Clona o descarga este repositorio.
2. Abre `index.html` en tu navegador.

Si prefieres usar un servidor local, puedes ejecutar alguno de estos comandos:

```bash
python -m http.server
```

o

```bash
npx serve .
```

Despues abre la direccion local que te muestre la terminal.

## Proximas mejoras

- Convertir el blog en una seccion dinamica usando PHP y SQL
- Conectar el formulario de contacto a un servicio real
- Guardar mensajes del formulario en base de datos SQL
- Enviar mensajes del formulario por correo con PHP
- Reemplazar placeholders por articulos y casos de estudio completos
- Completar `blog.html` como indice visual del blog
- Incorporar proyectos reales con capturas, stack y enlaces
- Mejorar SEO con metadatos y Open Graph

## Autora

Rosalee Castro  
Desarrolladora web junior
