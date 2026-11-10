-- Prueba de funcionamiento · Bases de Datos I
-- Ejecuta todo el archivo (ver LEEME.md, paso 3). Debe mostrar 1000 películas y las filas con acentos.

SELECT VERSION() AS version, CURRENT_USER() AS usuario;

SHOW DATABASES;

USE practica;

CREATE TABLE IF NOT EXISTS Alumnos (
  id_alumno INT AUTO_INCREMENT PRIMARY KEY,
  nombre    VARCHAR(60) NOT NULL
);

INSERT INTO Alumnos (nombre) VALUES ('José Peña'), ('María Núñez');
SELECT * FROM Alumnos;

SELECT COUNT(*) AS peliculas FROM sakila2.film;
