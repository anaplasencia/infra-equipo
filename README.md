# Infra-equipo

Repositorio de infraestructura del laboratorio de Administración de Centros de Cómputo.

## Descripción
Despliegue con Docker Compose de Nginx, MySQL y HAProxy con red propia y volumen persistente correspondiente a la Semana 7.

## Requisitos
- Debian 13 o Ubuntu Server con Docker y el complemento Docker Compose v2.
- Archivo .env creado a partir de env.ejemplo, con las contraseñas de la base de datos (no se sube al repositorio por seguridad).

## Flujo de Trabajo (Semana 8)
- Uso estricto de Git Flow con ramas separadas (master y desarrollo-ana).
- Fusión formal mediante estrategia de historial gráfico (--no-ff).

## Entrega de Laboratorio - Automatizaciones Semana 9
- Script en Bash (`respaldo.sh`) para la ejecución de copias de seguridad compactadas en cron.
- Script en Python para la auditoría de integridad en caliente de los contenedores y volúmenes.
