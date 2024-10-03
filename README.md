# Hackato
La FitConnect API es una interfaz web que gestiona actividades físicas. Permite a los usuarios registrarse, iniciar sesión, crear y buscar actividades, inscribirse y desinscribirse en ellas, y manejar datos en formato JSON. Desarrollada con Flask y SQLAlchemy, brinda un entorno seguro y eficiente para la gestión de actividades.

# Web API

# Para poder entrar en la API, sigue los siguientes pasos para ejecutarla y poder verla.

# Pasos de instalación

# 1. Instala el paquete de Python y MySQL
sudo apt-get install python3-venv
sudo apt-get install mysql-server

# 2. Crea un directorio para la Web API
mkdir webapi

# 3. Navega al directorio y pasa los archivos descargados
cd webapi

# 4. Crea un entorno virtual
python3 -m venv venv

# 5. Activa el entorno virtual
source venv/bin/activate

# 6. Asegúrate de tener los archivos del proyecto en este directorio.

# 7. Instala las dependencias necesarias
pip install -r requirements.txt

# 8. Ejecuta el script de configuración de la base de datos como root
sudo ./setup_db.sh

# 9. Finalmente, ejecuta la Web API
python app.py

# ¡Listo! Ahora deberías poder acceder a la Web API.
