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