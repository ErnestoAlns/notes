### algoritmos basicos

## mayor de tres mejorado
```rust
fn max_numb(a: i32, b: i32, c: i32) -> i32 {
    if a > b && a > c {
        a
    } else if b > c {
        b
    } else {
        c
    }
}

```

## Busqueda binaria primitivo
```rust
fn main(){
    let datos =  vec![1, 2, 5, 7, 8, 9, 10];
    let target = 5;
    let result = binary_search(&datos, target);
    println!("Your target is: {:?}, in {}, were possition {}", datos, target, result);
}

fn binary_search(data: &[i32], target: i32) -> i32{
    let mut down: i32 = 0;
    let mut up: i32 = (data.len() - 1) as i32;
    let mut mean: i32 = 0;

    while down <= up {
        mean = (up + down) / 2;
        if mean == target { return mean; }
        else if data[mean as usize] < target { down = mean + 1; }
        else { up = mean -1; }
    }
    mean
}
```
