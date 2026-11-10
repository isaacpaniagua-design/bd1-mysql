# Cómo publicar este espacio (profesor)

1. Inicia sesión en github.com con la cuenta **isaacpaniagua-design** (correo de Potros) y crea un repositorio **público** llamado exactamente `bd1-mysql` (sin README). Si usas otro nombre, cambia el enlace en `LEEME.md` y en el paso 4.
2. Sube todo el contenido de esta carpeta, **incluida la carpeta oculta `.devcontainer`**:
   *Add file → Upload files* → arrastra las carpetas `.devcontainer`, `db`, `practicas` y los archivos `LEEME.md` y `PROFESOR.md` → *Commit changes*.
   En Windows, si el Explorador oculta `.devcontainer`, actívalo en *Vista → Mostrar → Elementos ocultos*.
3. Prueba tú primero: en el repositorio, *Code → Codespaces → Create codespace on main*. Ejecuta `mysql < practicas/01_prueba.sql` en la terminal. Debe mostrar 1000 películas y los nombres con acento.
4. Publica en Classroom este enlace:

   `https://codespaces.new/isaacpaniagua-design/bd1-mysql?quickstart=1`

   Con `quickstart=1`, si el alumno ya tiene un codespace de este repositorio, GitHub le ofrece reanudarlo en lugar de crear otro.

## Notas

- Cada alumno usa **su propia cuota gratuita** de GitHub (120 horas de núcleo al mes = 60 h con la máquina de 2 núcleos). A ti no se te cobra nada.
- Los alumnos no pueden modificar tu repositorio: trabajan en su copia dentro del codespace. Lo que entreguen lo descargan y lo suben a Classroom.
- Las bases de `db/init/` se cargan **solo al crear** el codespace. Si cambias un script, los codespaces existentes no se actualizan; el alumno puede ejecutarlo a mano (`mysql < db/init/archivo.sql`).
- `BD_Servicios_Autos.sql` **no** está precargada a propósito: construirla es la Asignación 20.
