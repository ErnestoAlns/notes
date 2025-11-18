# Control de flujo.

```bash
# condicional de if
condicion="condicional"
if [[ $condicion ]]
then
    true
else
    false
fi

# anidar if es asi: 
# se puede concatenar varias condiciones
if [[ condicion ]];then
    if [[ condicion ]]; then
            true
        elif [[ $2daCondicion ]]
        then
            echo "lo que sea"
        else
            false
    fi
fi

```
## cases
```bash
case <expresión> in
    <patrón 1>)
        comandos
        ;;
    <patrón 2>)
        comandos
        ;;
    *)
        comandos
        ;;
esac
```
