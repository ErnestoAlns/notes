## Hashing

Para mantener seguras las passwords de los usuarios es nesesario contar con
una tecnologia que permita enciptar dicha passwords, en pyhon tenemos una 
libreria capazd hashear contrasenas esta libreria se llama: 
 - bcrpt

## Generar una contrasena hash

 ```python
 import bcrypt

password = 'contrasenaxdx'

#la funcion .encode() permite pasar a bytes el string
password_encode = password.encode('utf-8') 

# 2. Generar el salt (se incrusta automáticamente en el hash) y el hash.
hashed = bcrypt.hashpw(password_bytes, bcrypt.gensalt())
 
 ```


## Como comparar contrasenas

 ```python
def check_password(password: str, hashed_password: str) -> bool:
    """Verifica si la contraseña ingresada coincide con el hash almacenado."""
    try:
        # 1. Codificar ambas a bytes
        password_bytes = password.encode('utf-8')
        hashed_bytes = hashed_password.encode('utf-8')
        
        # 2. La magia de bcrypt: Compara el hash con la contraseña.
        #    bcrypt extrae el salt del hash_almacenado para hacer la verificación.
        return bcrypt.checkpw(password_bytes, hashed_bytes)
    except ValueError:
        # Esto maneja errores si el hash almacenado no es válido (ej. corrupto)
        return False

 
 ```
