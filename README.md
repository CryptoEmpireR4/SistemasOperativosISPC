# SistemasOperativosISPC
# DEBIAN TOOLKIT - ISPC TECH ENTERPRISE
## Requisitos

- Sistema operativo: Linux (Ubuntu recomendado)
- Bash shell
- Permisos de ejecución en los scripts (`chmod +x`)

---
## Archivos Incluidos

| Archivo           | Descripción                                                                 |
|-------------------|------------------------------------------------------------------------------|
| `main_toolkit.sh` | Script principal con menú de texto para acceder a las funcionalidades        |
| `procesos.sh`     | Script que gestiona las operaciones sobre los procesos del sistema           |

---

## Cómo Ejecutar el Toolkit

1. Asegurarse de que los scripts tienen permisos de ejecución:
   ```bash
   chmod +x main_toolkit.sh procesos.sh
   ```

2. Ejecuta el script principal:
   ```bash
   ./main_toolkit.sh
   ```

---

## Funcionalidades Disponibles 

### 1. Listar Procesos en Ejecución
Muestra todos los procesos del sistema en formato estático usando `ps aux`. El resultado se puede navegar con `less`.

### 2. Ver Información de un Proceso por PID
Permite ingresar un PID (Process ID) y muestra detalles del proceso con `ps -p <PID> -f`.

### 3. Terminar un Proceso
Solicita el PID del proceso a terminar. Antes de ejecutar `kill`, solicita confirmación del usuario.

### 4. Estado de un Proceso
Permite buscar procesos por nombre o coincidencia parcial usando `pgrep -a`.

### 5. Salir
Finaliza la ejecución del toolkit.

---

## 🔧 Comandos Utilizados

- `ps`
- `kill`
- `pgrep`
- `less`
- `read`
- `clear`

---
