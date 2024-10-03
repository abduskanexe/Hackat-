#!/bin/bash

# Variables
DB_NAME="appActivitatsDB"
DB_USER="appuser"
DB_PASSWORD="StrongPassword10"
SQL_FILE="./appActivitatsDB.sql"  # Asegúrate de que la ruta sea correcta

# Crear la base de datos
mysql -u root -p -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;" || { echo "Error al crear la base de datos"; exit 1; }

# Crear el usuario y conceder permisos
mysql -u root -p -e "CREATE USER IF NOT EXISTS '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASSWORD';" || { echo "Error al crear el usuario"; exit 1; }
mysql -u root -p -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'localhost';" || { echo "Error al otorgar privilegios"; exit 1; }
mysql -u root -p -e "FLUSH PRIVILEGES;" || { echo "Error al refrescar privilegios"; exit 1; }

# Importar el archivo SQL
mysql -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" < "$SQL_FILE" || { echo "Error al importar el archivo SQL"; exit 1; }

echo "Base de datos y usuario creados con éxito, y datos importados."
