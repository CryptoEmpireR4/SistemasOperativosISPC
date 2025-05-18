#!/bin/bash

listar_procesos() {
    echo "Procesos en ejecución:"
    ps aux | less
    read -p "Presiona Enter para volver al menú..."
}

info_proceso() {
    read -p "Ingresa el PID del proceso: " pid
    echo "Información del proceso $pid:"
    ps -p $pid -f
    read -p "Presiona Enter para volver al menú..."
}

matar_proceso() {
    read -p "Ingresa el PID del proceso que deseas terminar: " pid
    read -p "¿Estás seguro que deseas terminar el proceso $pid? (s/n): " confirmacion
    if [[ "$confirmacion" == "s" || "$confirmacion" == "S" ]]; then
        kill $pid && echo "Proceso $pid terminado." || echo "No se pudo terminar el proceso."
    else
        echo "Operación cancelada."
    fi
    read -p "Presiona Enter para volver al menú..."
}

estado_proceso() {
    read -p "Ingresa el nombre o parte del nombre del proceso: " nombre
    echo "Procesos que coinciden con '$nombre':"
    pgrep -a "$nombre"
    read -p "Presiona Enter para volver al menú..."
}

#lógica de ejecución según parámetro
case "$1" in 
    listar)
        listar_procesos
        ;;
    info)
        info_proceso
        ;;
    matar)
        matar_proceso
        ;;
    estado)
        estado_proceso
        ;;
    *)
        echo "Uso: $0 {listar|info|matar|estado}"
        ;;    
esac
