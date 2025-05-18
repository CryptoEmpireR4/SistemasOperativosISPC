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