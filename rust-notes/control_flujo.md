## Controladores de flujo.


### if, else if, else

```rust
if condicion {
    // True code
}  else if {
    // conditional code
} else {
    // final code
}

```
Se pueden wapped code like: 
```rust
let number = 7;

let satus = if number  % 2 == 0 { "Par" } else { "Inpar" };
```

###  Loop
Es un bucle infinito con control manual.

```rust
let mut counter = 0;
loop {
    counter += 1; 
    if counter == 3{
        break;
    }
}
```

Una de las funciones que mas me gusta a mi de rust es la de
mutear el valor de una variable al retorno de un loop.

```rust
let mut counter = 0;
let  res = loop { counter += 1; if counter == 3 { break counter * 3; };
}
```

### while
Esta es la clasia ejecucion hasta que se cumpla una condicion.
```rust
let mut n = 0;
while n < 5 {
    print!("{}", 5);
    n +=1;
}
```


### For
itera sobre un rango o una coleccion.

```rust
// Iteracion entre rango
for i in 0..5 {
    print!("{}", i)
}
//Iteracion en coleccion o array
let datos = ["Ernesto", "Jose", "Alonso"];
for dato in datos {
    print!("Tu dato es: {}", dato)
}
// Una variante de esta es la iteracion con enumertate
for (i, valor)  in (10..15).enumerate() {
    print!("Indice: {}, Valor: {}", i, valor);
}
```

### Match

```rust
let num = 3;
match  num {
    1 => print!("uno"),
    2 | 3 | 4 => print!("dos, tres o cuatro"),
    _ => print!("valor por defecto"),
}
// la funcion mas util dematch es tmb la que se puede adjuntar
// al valor de una variable: 
let prom = 95;

let res = match prom {
    90..=100 => "Exelente", 
    70..=89 => "Bueno", 
    0..=69 => "Que pendejo jajjaja", 
    _ => "resultado no valido",
};

print!("Tu resultado es: {}", res);
```
