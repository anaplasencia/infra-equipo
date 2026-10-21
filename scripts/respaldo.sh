#!/bin/bash
set -euo pipefail
DIR="$(cd "$(dirname "$0")/.." && pwd)"
set -a
source "$DIR/compose/.env" 2>/dev/null || MYSQL_ROOT_PASSWORD="cambiar_esta_clave"
set +a
FECHA=$(date +%F_%H%M)
docker exec -e MYSQL_PWD="$MYSQL_ROOT_PASSWORD" db mysqldump -uroot --all-databases > "$DIR/backups/db_$FECHA.sql" 2>/dev/null || docker exec db mysqldump -uroot --password="" --all-databases > "$DIR/backups/db_$FECHA.sql"
tar -czf "$DIR/backups/db_$FECHA.tar.gz" -C "$DIR/backups" "db_$FECHA.sql"
rm "$DIR/backups/db_$FECHA.sql"
echo "Respaldo OK: db_$FECHA.tar.gz"
