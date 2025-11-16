## Estructuras en rust
En rust no existe propiamente la programacion
orentada objetos, pero existen funciones que 
permiten implementar estas de un modo mas 
estructurado.

### struct

```rust
struct User {
    id: u32,
    name: String,
    password: String,
    status: bool,=
}
// Para instanciar el User.

let user = User {
    id: 1,
    name: String::from("Ernesto"),
    password: String::from("luis9139"),
    status: true,
}
println!("User; ", user.name);
```

### Enum
Este es el rubro que aun no comprendo del todo,1
es un "diccionario de estados", en si define
un tipo que puede ser uno de varios valores

```rust
enum EstadoUsuarios:{
    Activo,
    Inactivo,
    Suspendido,
}
// enum se "instancia" con el uso del match para verificar su estado:
let estado = EstadoUsuarios::Suspendido(String::from("Falta de pago"));//instacia
match estado {
    EstadoUsuarios::Activo => println!("Estado activo"),
    EstadoUsuarios::Inactivo => println!("Estado Inactivo"),
    EstadoUsuarios::Suspendido(motivo) => println!("Suspendido por: {}", motivo),
}

```

### impl
La implemetacion es parte fundamental de las estructuras permite asociar funciones (metodos)
a las mismas, para poder instaciarlas de manera segura.
```rust

struct User {
    id: u32,
    name: String,
    password: String,
    status: bool,
}

impl User {
    fn new_user(id: u32, name: &str, password: &str) -> Self{
        name: name.name.to_string(),
        password: password.password.to_string(),
        status: true,
    }

    fn desactivar(&mut self){
        self.status = false
    }

    fn esta_activo(&self)-> bool{
        self.status
    }
}

let mut user = User::new_user(1,Ernesto, 9139); //aqui instaciamos las funciones del user.
println!("Status: {}", user.esta_activo())
user.desactivar()
println!("Status: {}", user.esta_activo())
```







