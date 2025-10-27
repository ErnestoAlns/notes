## Rust  

Rust is a programing languaje that is an evolution to C and C++ 

## Extention
rust use an `.rs` extantion

## Compler
rust use rustc to comple code like 
```bash
touch main.rs
rustc main.rs
# rust will make a program name like file.rs -> file
# theb you can use ./file to execute the program
./main
```


## Anatomy of a rust program 
Let’s review this “Hello, world!” program in detail. Here’s the first piece of the puzzle:
```rust
fn main(){

}
```
These lines define a function named main. The main function is special: it is always the first code that runsin
in every executable Rust program. Here, the first line declares a function named main that has no parameters 
and returns nothing. If there were parameters, they would go inside the parentheses ().
The function body is wrapped in {}. Rust requires curly brackets around all function bodies.
It’s good style to place the opening curly bracket on the same line as the function declaration, adding one space in between.

## Creates project with cargo 
This is the best way to make a project wiht cargo poject manager.
use: 

```bash
cargo new project_name
# this will make a directory project_name
# the dictorie create an git instance, a cargo.toml thie depenensie etecetera
# to compile this project can use
cargo build
# if you want to compile and run this program use:
cargo run
# you also can check if your program can compie without make a executable
# you can use: 
cargo check
```

Let’s recap what we’ve learned so far about Cargo:
 - We can create a project using `cargo new`.
 - We can build a project using `cargo build`.
 - We can build and run a project in one step using `cargo run`.
 - We can build a project without producing a binary to check for errors using `cargo check`.
 - Instead of saving the result of the build in the same directory as our code, Cargo stores it in the target/debug directory.

## Building for release
When your project is finally ready for release, you can use `cargo build --release` to compile it with optimizations.
This command will create an executable in target/release instead of target/debug.
The optimizations make your Rust code run faster, but turning them on lengthens the time it takes for your program to compile. 


