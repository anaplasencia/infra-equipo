#!/bin/bash
# Script de respaldo automatizado - Semana 9
FECHA=$(date +%Y%m%d_%H%M%S)
RUTA_DESTINO="/proyecto-s7/respaldos"
mkdir -p $RUTA_DESTINO

echo "[$(date)] Iniciando copia de seguridad comprimida..."
tar -czf $RUTA_DESTINO/respaldo_proyecto_$FECHA.tar.gz -C /proyecto-s7 docker-compose.yml README.md 2>/dev/null

if [ $? -eq 0 ]; then
    echo "[SUCCESS] Respaldo guardado exitosamente en: $RUTA_DESTINO/respaldo_proyecto_$FECHA.tar.gz"
else
    echo "[ERROR] Hubo un problema al compactar los archivos."
fi
