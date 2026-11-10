# Bases de Datos I · MySQL en el navegador

Este espacio trae **MySQL 8.4** listo para usarse, sin instalar nada en la computadora. Funciona en cualquier navegador (Chrome o Edge recomendados).

| Base de datos | Para qué se usa |
| --- | --- |
| `practica` | Vacía. Aquí creas tus tablas de ejercicio |
| `sakila2` | Videoclub: JOIN, GROUP BY, subconsultas |
| `spotify` | Música: subconsultas |
| `world` | Países y ciudades |

Usuario `root`, contraseña `bd1` (ya están configurados; normalmente no tendrás que escribirlos).

---

## 1. Abrir tu espacio (solo la primera vez)

1. Inicia sesión en [github.com](https://github.com). Si no tienes cuenta, créala gratis con tu correo `@potros.itson.edu.mx`.
2. Abre este enlace (también está en Classroom): **[https://codespaces.new/isaacpaniagua-design/bd1-mysql?quickstart=1](https://codespaces.new/isaacpaniagua-design/bd1-mysql?quickstart=1)**
3. Deja las opciones como están (**2-core**) y da clic en **Create codespace**.
4. Espera 2–4 minutos. Se abre VS Code en el navegador y, al final, la pestaña **phpMyAdmin**.

La primera vez se cargan las bases de práctica. Si phpMyAdmin dice que no puede conectar, espera un minuto y recarga.

## 2. Volver a entrar (las siguientes veces)

Entra a **[github.com/codespaces](https://github.com/codespaces)** y da clic en tu codespace. **No crees uno nuevo**: tus tablas y archivos están en el que ya tienes.

## 3. Tres formas de escribir SQL

**A. phpMyAdmin (la más parecida a Workbench)**
Pestaña **PORTS** (abajo) → fila *phpMyAdmin (8080)* → ícono del globo 🌐. Elige una base a la izquierda → pestaña **SQL** → escribe → **Continuar**.

**B. Terminal**
Menú ☰ → *Terminal* → *New Terminal*, y escribe:
```bash
mysql
```
```sql
USE sakila2;
SELECT title FROM film LIMIT 5;
EXIT;
```
Para ejecutar un archivo completo: `mysql < practicas/01_prueba.sql`

**C. Archivos .sql dentro de VS Code (SQLTools)**
Abre `practicas/01_prueba.sql`, selecciona el texto y presiona **Ctrl + E, Ctrl + E**. Los resultados aparecen en un panel a la derecha. Guarda aquí tus prácticas: `practicas/A21_ApellidoNombre.sql`.

## 4. Al terminar la clase

- **Descarga tus archivos** que vas a entregar: clic derecho sobre el archivo → *Download*.
- **Detén el codespace**: [github.com/codespaces](https://github.com/codespaces) → ⋯ → *Stop codespace*. Se detiene solo tras 30 min sin uso, pero detenerlo ahorra tus horas gratuitas (60 h al mes con 2 núcleos).
- Un codespace que no abres en **30 días** se borra con todo lo que contiene.

## 5. Problemas frecuentes

| Problema | Solución |
| --- | --- |
| phpMyAdmin: *Cannot connect* o *Connection refused* | MySQL sigue cargando las bases. Espera 1 minuto y recarga |
| No veo la pestaña PORTS | Menú ☰ → *View* → *Open View…* → escribe **Ports** |
| `ERROR 1175` (safe update) | Solo en Workbench; aquí no aplica. Si lo ves, agrega `WHERE` con la llave primaria |
| Borré una base de práctica | En la terminal: `mysql < db/init/01_sakila.sql` (cambia el número por la base que necesites) |
| Quiero empezar de cero | Borra el codespace y crea uno nuevo con el enlace del profesor. **Se pierde todo lo que hiciste** |
| Me quedé sin horas | Avísale al profesor; mientras, usa [db-fiddle.com](https://www.db-fiddle.com) eligiendo MySQL 8.0 |

Los nombres de bases y tablas **no distinguen mayúsculas** (`SAKILA2.Film` = `sakila2.film`), igual que MySQL en Windows.
