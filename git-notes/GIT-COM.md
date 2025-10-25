# Learn Git

## Que es git
Git es un con trolador de versiones y repositorios 
desentralizado.

## Uso de git
 - historial
 - amacenar codigo
 - trabajo en equipo
 - mejor debbugin

## configuracion

```git
    git config --global user.name "Nombre"
    git config --global user.email "email"
```

Indicar tu editor
```git
    git config --global core.nvim "nvim --wait"
```

Ver tu configuracion
```git
    git config --global  -e
```

## Flujo de tabajo
| PC | Stage | Commit | Server|
-------------------------------
|Code >|Cambios >|cam repo>| produccion|

## Iniciar git o repo
```git
    git init
```
## Ver area de stage
Monitora los archivos en el repo
```git
    git status

    gst --shorcut
```

## Monitorar archivos de stage
agrega los arcvios para ser monitorados en stage
```git
    git add filename

    ga -- shrcut
```
## Comprometer un cambio
Este paso manda tu repo a la build
```git
    git commit -m "Mensaje determinante"
```

## Agregar archivos para ignorar
 Debes de crear un archivo llamado .gitignore;
 dentro listar los archivos a ignorar
```git
    git  -m "Mensaje determinante"
```

## Comandos utiles
```git
    gst -s                          -- Lista las modificaciones
    git rm fimename                 -- Pueder remover archvos de repos con: 
    git resore --staged filename    --remueve archivos de stage
    git resore filename             --recupera archivos eliminados
```
## Mostrar los cambios hechos
```git
    git diff              --muesta los cambios de pc
    git diff --staged     --muesta los cambios en la tapa stage
```

## Ver los cambios comprometidos
```git
    git log             - muesta todos los commit
    git log -oneline    - muesta los commit resumidos 
```
## Ver las ramas o branch
```git
    git branch                               - muesta la rama actual
    git checkout -b new_branch_name          - crea una nueva rama

    git merge name_brach                     - une o converje ramas
```

## Connectar git y github
```git
    git remote add origin url      --conect with github
    git push -u origin main        --upload the project to  github
    git push -u origin newbranch   --upload the project to  github(not main project)
```


 












