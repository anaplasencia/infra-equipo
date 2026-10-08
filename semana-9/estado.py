import os
archivos = os.listdir("/proyecto-s7/respaldos")
if archivos:
    ruta_archivo = os.path.join("/proyecto-s7/respaldos", archivos[0])
    if os.path.exists(ruta_archivo):
        print("¡El respaldo de Ana existe y está seguro!")
    else:
        print("Archivo de respaldo no encontrado.")
else:
    print("No hay respaldos generados.")
