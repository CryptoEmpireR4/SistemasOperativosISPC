
#!/bin/bash

echo "====== INFORMACIÓN DE DISCO ======"
echo ""
echo "--- Espacio en disco (df -h) ---"
df -h
echo ""

read -p "Ingresa una ruta para ver su tamaño (ej: /home): " ruta
if [ -d "$ruta" ] || [ -f "$ruta" ]; then
    du -sh "$ruta"
else
    echo "Ruta inválida."
fi
echo ""
