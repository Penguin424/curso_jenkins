#!/bin/bash
set -e # Detener el script si algo falla

VENV_PATH="./.venv"

echo "Creando entorno virtual..."
python3 -m venv $VENV_PATH

# Usamos la ruta absoluta al python del venv para instalar y ejecutar
echo "Instalando dependencias..."
$VENV_PATH/bin/python3 -m pip install --upgrade pip
$VENV_PATH/bin/python3 -m pip install -r requirements.txt

echo "Ejecutando pruebas con pytest..."
$VENV_PATH/bin/pytest test/ --junitxml=reports/test_results.xml --html=reports/test_report.html --self-contained-html

echo "Proceso completado."