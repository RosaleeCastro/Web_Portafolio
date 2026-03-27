CREATE DATABASE IF NOT EXISTS formulario_contacto
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE formulario_contacto;

CREATE TABLE IF NOT EXISTS mensajes_contacto (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(150) NOT NULL,
    asunto VARCHAR(150) NOT NULL,
    mensaje TEXT NOT NULL,
    fecha_envio TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS blog_posts (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(180) NOT NULL,
    slug VARCHAR(200) NOT NULL UNIQUE,
    extracto TEXT NULL,
    contenido LONGTEXT NOT NULL,
    imagen_destacada VARCHAR(255) NULL,
    categoria VARCHAR(100) NULL,
    estado ENUM('borrador', 'publicado') NOT NULL DEFAULT 'borrador',
    fecha_publicacion DATETIME NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO blog_posts (
    titulo,
    slug,
    extracto,
    contenido,
    imagen_destacada,
    categoria,
    estado,
    fecha_publicacion
) VALUES
(
    'Como estoy construyendo mi perfil como desarrolladora',
    'como-estoy-construyendo-mi-perfil-como-desarrolladora',
    'Una mirada a los proyectos, habitos y decisiones que me estan ayudando a crecer como desarrolladora web junior.',
    'Construir un perfil como desarrolladora no depende solo de estudiar teoria. En mi caso, el avance real ha llegado cuando he empezado a convertir el aprendizaje en proyectos concretos. Cada pagina, formulario, integracion o mejora visual me ayuda a entender mejor como se unen el diseno, la logica y la experiencia de usuario. Tambien estoy aprendiendo a documentar mejor lo que hago, a organizar mis archivos con mas criterio y a pensar cada proyecto como una solucion real y no solo como una practica tecnica. Mi objetivo no es solo aprender herramientas, sino desarrollar una forma de trabajo clara, constante y profesional.',
    NULL,
    'Carrera tech',
    'publicado',
    '2026-03-20 10:00:00'
),
(
    'Componentes reutilizables en proyectos pequeños',
    'componentes-reutilizables-en-proyectos-pequenos',
    'Por que incluso en proyectos sencillos merece la pena pensar en piezas reutilizables desde el principio.',
    'Cuando un proyecto parece pequeno, es facil caer en la tentacion de escribir todo de forma rapida y sin estructura. Sin embargo, incluso en webs sencillas, trabajar con componentes reutilizables ahorra tiempo y hace que el resultado final sea mas consistente. Botones, tarjetas, bloques de contenido, enlaces destacados o secciones visuales pueden convertirse en patrones faciles de mantener si se disenan con intencion. Esta forma de trabajar me ayuda a escalar mejor cada proyecto y a evitar rehacer estilos o estructuras cuando necesito crear nuevas paginas o nuevas secciones dentro del mismo sitio.',
    NULL,
    'Frontend',
    'publicado',
    '2026-03-22 12:30:00'
),
(
    'Frontend, API y base de datos: como conecto las piezas',
    'frontend-api-y-base-de-datos-como-conecto-las-piezas',
    'Una explicacion sencilla de como entiendo la relacion entre interfaz, backend y persistencia de datos.',
    'Uno de los aprendizajes mas importantes en mi camino ha sido comprender que una aplicacion web no termina en la interfaz. El frontend muestra la informacion y recoge acciones del usuario, pero necesita una API o una capa backend que procese reglas de negocio y gestione los datos. A su vez, esa logica necesita una base de datos bien pensada para almacenar y recuperar informacion de forma consistente. Cuando trabajo en proyectos como formularios, gestores o paneles, intento ver esas tres partes como un flujo continuo: la interfaz solicita, el backend interpreta y la base de datos conserva. Entender esa relacion me esta ayudando a construir proyectos mas completos y mas cercanos a necesidades reales.',
    NULL,
    'Full stack',
    'publicado',
    '2026-03-24 09:15:00'
);
