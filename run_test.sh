#!/bin/bash
echo "Creando entorno virtual..."
python3 -m venv .venv

echo "Activando el entorno virtual..."
source .venv/bin/activate

echo "instalando dependencias..."
pip install -r requirements.txt

echo "Ejecutando pruebas con pytest..."
pytest test/ --junitxml=reports/test_results.xml --html=reports/test_report.html --self-contained-html

echo "Pruebas finalizadas. resultados guardados en reports/test_results.xml y reports/test_report.html"