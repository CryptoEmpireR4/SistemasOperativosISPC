#!/bin/bash
while true; do
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
        read -p "Elige una opción (1-5): " opcion
        case $opcion in
                1)
                bash procesos.sh listar
                ;;
                2)
                bash procesos.sh info
                ;;
                3)
                bash procesos.sh matar
                ;;
                4)
                bash procesos.sh estado
                ;;  
                5)
                  echo "Saliendo de la App"
                  sleep 1
                  break
                  ;;
                *)
                echo "Opción inválida. Presiona Enter para continuar."
                read;;
        esac             
done


