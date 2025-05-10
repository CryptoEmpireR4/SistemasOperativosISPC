#!/bin/bash
while true
do
        clear

        echo "====================================="
        echo "------- ISPC TECH ENTERPRISE --------"
        echo "           DEBIAN TOOLKIT            "
        echo "            Menu Opciones            "
        echo "-------------------------------------"
        echo "1 - Listar PROCESOS en Ejecución"
        echo "2 - ID del proceso"
        echo "3 - Terminar PROCESO"
        echo "4 - Estado del Proceso"
        echo "5 - Salir de la Aplicación"
        echo "===================================="
        echo "Elige una de las opciones (Nros del 1 al 5): "
        read opcion
        case $opcion in
                5)
                        echo "Saliendo de la App"
                        break;;
                1)
                        echo "Listando Procesos en Ejecucion"
                        top;;
done


