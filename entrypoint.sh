#!/bin/bash

# Asegúrate de que el binario tenga permisos de ejecución
chmod +x ./scan-cli-plugin

# Ejecuta Scan-CLI-Plugin con los argumentos proporcionados
./scan-cli "$@"