#!/bin/bash

cat <<EOF
# Hackato

La FitConnect API es una interfaz web que gestiona actividades físicas. Permite a los usuarios registrarse, iniciar sesión, crear y buscar actividades, inscribirse y desinscribirse en ellas, y manejar datos en formato JSON. Desarrollada con Flask y SQLAlchemy, brinda un entorno seguro y eficiente para la gestión de actividades.

# Web API

## Descripción

Esta Web API gestiona actividades físicas, permitiendo a los usuarios crear, consultar y administrar actividades. Sigue los pasos a continuación para instalar y ejecutar la API en Ubuntu.

## Requisitos

- Python 3
- MySQL

## Pasos de Instalación

1. **Instala el paquete de Python y MySQL:**

   \`\`\`bash
   sudo apt-get install python3-venv
   sudo apt-get install mysql-server
   \`\`\`

2. **Crea un directorio para la Web API:**

   \`\`\`bash
   mkdir webapi
   \`\`\`

3. **Navega al directorio y pasa los archivos descargados:**

   \`\`\`bash
   cd webapi
   \`\`\`

4. **Crea un entorno virtual:**

   \`\`\`bash
   python3 -m venv venv
   \`\`\`

5. **Activa el entorno virtual:**

   \`\`\`bash
   source venv/bin/activate
   \`\`\`

6. **Asegúrate de tener los archivos del proyecto en este directorio.**

7. **Instala las dependencias necesarias:**

   \`\`\`bash
   pip install -r requirements.txt
   \`\`\`

8. **Ejecuta el script de configuración de la base de datos como root:**

   \`\`\`bash
   sudo ./setup_db.sh
   \`\`\`

9. **Finalmente, ejecuta la Web API:**

   \`\`\`bash
   python app.py
   \`\`\`

## ¡Listo!

Ahora deberías poder acceder a la Web API.
EOF
