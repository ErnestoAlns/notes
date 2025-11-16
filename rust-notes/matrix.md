# Matrices 
Las matrices son parte ensencial de desiplinas de ingenieria
como machine lerning, IA, data sienteist etc.

---
## Vectores
Es importatne repasar los vertores rust pues las matrices son 
en esencia cun conjunto de vectores.
>[!note]
Es importante mencianar que los vectores son un conjunto de
**Valores del mismo tipo**, en cambio las tupas pueden tener 
valores de diferentes tipos.

```rust
// Para definir un vector vacio: 
let vector: Vec<i32> = Vec::new();

// el metodo .push() agrega elementos al vector.
vector.push(5); //lo agrega al final del vector.
vector.push(3); // vector resultante = [5,3]

//el metodo len() retorna el numero de elementos.
vector.len();// = 2

// el metodo pop() elimina el ultimo elemento del Vec
vector.pop(); // [5]


// Es mejor declarar una variable tipada como: 
let vector = vec![1, 2, 3, 4, 5];
```


---
## Implementacion en rust
La forma mas idomatica d ehacer esto es mediate un 
struct y despues una implementacion 

```rust
//matric 3x3
struct Matrix {
    rows: [[u8, 3]; 3],

}
```
