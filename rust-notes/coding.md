## The code tings 
you can make comments with

```rust
// comments
```
## Libraries 
to delaer librari we use `use`

```rust
use std::io;
```

## main 
rust will read the main fuction as te priority codeblock and is teh program core
we declare as: 
```rust
fn main()
//We can output with:
println!("Test to print");
```


## Variables y tipos de datos
Rust prioriza la seguridad y el control explícito sobre la memoria.
Todos sus tipos de datos primitivos especifican su tamaño y si tienen signo.

### Integers .
Para declarar este tipo de variables es de la siguiente forma: 
```rust
// el numero ix indica la cantidad de bits cupados.
//Estos valores pueden ser positivos o negativos 
let num: i8 = 5;
let num: i16 = 5;
let num: i32 = 5;
let num: i34 = 5;
let num: i128 = 5;

//Para declara valore que sean solo positivos y ademas el zero.
let num: u8 = 5;
let num: u16 = 5;
let num: u32 = 5;
let num: u34 = 5;
let num: u128 = 5;

//Tambien puedes declara el tipo de arquitectura que se usa 
//ya sea de 32 0 64 bits.
let num: insize = 3;
let num: unsize = 3;
```

### Coma flotante.
Rust asume f64 por defecto. Si necesitas f32, debes especificarlo explícitamente.
f64 es la opción preferida en hardware moderno por su mejor balance entre velocidad y precisión.

```rust
let pi: f32 = 3.14159; //Precisión simple (más rápido, menos exacto).
let pi: f64 = 3.14159; //Precisión doble (más lento, más exacto).
```

### C. Booleanos

```rust
//Tipo	Tamaño (bits)							
bool	//8 (efectivamente 1 bit)	true o false	
//Valores	Ejemplo de Sintaxis
let es_mayor: bool = 10 > 5;
```


### Caracteres

```rust
:char // para declarar tipo caracter
let letra: char = 'x';
```

### Declarar Srings

```rust
// Para declara strings se usa: 
let saludo = String::form("Hola");
```

### Diferencia Clave: String vs &str
Esta es la lección más importante sobre texto en Rust.
La sintaxis que usaste en la pregunta te obliga and entender la diferencia entre dos tipos:

1. `&str` String Slice o Literal de Cadena:
 - Es un tipo inmutable y de tamaño fijo que se almacena directamente en el binario del programa
 - Cuando escribes `let literal = "Hola";`, el compilador infiere el tipo `&str`.
 - Es muy rápido, pero no puedes modificarlo ni cambiar su tamaño.

2. `Sting:`
 - Es un tipo crecible, mutable y con propiedad (Owned) que almacena su contenido en el Heap
 - Es lo que necesitas si vas a modificar la cadena (ej. añadiendo texto o leyendo entrada de usuario).

 >[!note]
*recuerda que los metodos, read_line() y prase() retornan un* `Result`

## Errors en funciones externas
las funciones que pueden fallar al recuperar datos introducidos
por el usario es deic las funciones como `read_line` o `parse()`
en rust derivan distinots tipos de errores, como lo seria un 
error estandar: `std::error::Error` o un error de `parseIntError`
en funciones que tengan ambos tipos de errores, por ejempo una
funcion que pida mediante un read_line un numero al usario es mejor 
usar `Box<dyn std::error::Error>`
ejemplo: 
```rust
use std::io;
use std::error::Error;

fn get_from_user() -> Result<i32, Box<dyn Error>>
```

