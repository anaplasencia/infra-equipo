import os
if os.path.exists("/proyecto-s7/respaldos"):
    archivos = os.listdir("/proyecto-s7/respaldos")
    if archivos:
        print("¡El respaldo de Ana existe y está seguro!")
    else:
        print("No hay respaldos generados.")
else:
    print("Directorio de respaldos no encontrado.")
