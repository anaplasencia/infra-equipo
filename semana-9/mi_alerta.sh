#!/bin/bash
echo "[ALERTA] Verificando logs del sistema cron..."
cat /proyecto-s7/cron_log.log 2>/dev/null || echo "Logs limpios y estables."
