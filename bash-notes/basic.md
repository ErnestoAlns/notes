# Bash Scripting

## 1. Iniciar un bashscript
>[!note]
Los ficheros deben tener la termiacion: `.sh`

```bash
# Comenarios con #
# para indecar qeues un sicript

#!/bin/bash
```

>[!note]
```bash
# para darle permisos de ejejucion 
chmod +x script_name.sh

# para ejecutarlo se usa:
./script_name
```

## 2. Bash Output
```bash
echo "este es un output.";
echo "La fecha de hoy es:"
date
```

## 3. Variables
```bash
# para declarar una vaeriablese usa:
NOMBRE="Ernesto" # debe ser sin espacios

# para referirse a una variable se usa $
echo "Hola $NOMBRE"

# input de usario: 
read -p "Cual es tu nombre: " USUARIO
echo "Hola $USUARIO"
```

