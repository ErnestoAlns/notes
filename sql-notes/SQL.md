# MySQL - Notas de práctica 

## 1. Abrir MySQL en la terminal
Usa el comando:
```mysql
mysql -u root -p
```

## 2. Crear y usar la database
```mysql
-- Crear database
CREATE DATABASE D_Animals;

-- Seleccionar database
USE D_Animals;
```

## 3. Crear la tabla cat
```mysql
CREATE TABLE cat (
    id INT AUTO_INCREMENT PRIMARY KEY,
    color_eye VARCHAR(50),
    color VARCHAR(50),
    name VARCHAR(50)
);
```
**Nota:** Siempre incluir `AUTO_INCREMENT` para id si quieres que se genere automáticamente.

## 4. Insertar registros
```mysql
INSERT INTO cat (color_eye, color, name) VALUES
('green', 'black', 'Martha'),
('blue', 'white', 'Molly'),
('yellow', 'ginger', 'Pumpkin');
```
**Tip:** Puedes insertar múltiples registros a la vez, separados por comas.

## 5. Consultar registros
```mysql
-- Ver todos los registros
SELECT * FROM cat;

-- Filtrar registros
SELECT * FROM cat WHERE color_eye = 'green';
```
**Tip:** Usa `WHERE` para filtrar registros según tus criterios.

## 6. Modificar registros
```mysql
UPDATE cat SET name = 'Martha' WHERE id = 1;
UPDATE cat SET name = 'Molly' WHERE id = 2;
UPDATE cat SET name = 'Pumpkin' WHERE id = 3;
```
**Tip:** Siempre usar `WHERE` para no actualizar todos los registros accidentalmente.

## 7. Agregar o modificar columnas
```mysql
-- Agregar una columna
ALTER TABLE cat ADD COLUMN birth_date DATE;

-- Modificar columna existente
ALTER TABLE cat MODIFY COLUMN color VARCHAR(100);
```
**Recuerda:** Usar `ALTER TABLE` para agregar o modificar columnas, **no usar `AFTER TABLE`**.

## 8. Eliminar registros
```mysql
-- Eliminar un registro específico
DELETE FROM cat WHERE id = 2;

-- Eliminar todos los registros
DELETE FROM cat;
```
**Tip:** Siempre verificar con `SELECT` antes de borrar para evitar eliminar datos importantes.

## 9. Ver estructura de la tabla
```mysql
DESCRIBE cat;
```
**Tip:** `DESCRIBE` muestra las columnas, tipos de datos, claves y restricciones.

## 10. Otros comandos útiles
```mysql
-- Listar todas las databases
SHOW DATABASES;

-- Listar todas las tablas de la database actual
SHOW TABLES;
```

## 11. Errores comunes y recordatorios
- Nunca usar `AFTER TABLE`, siempre `ALTER TABLE` para modificar la estructura.
- Recordar poner valores de tipo `VARCHAR` entre comillas simples `' '`.
- Siempre usar `WHERE` en `UPDATE` y `DELETE` para no afectar todos los registros.
- `id` autoincremental no se inserta manualmente.
- Revisar la sintaxis de `CREATE TABLE` y `ALTER TABLE` antes de ejecutar.

