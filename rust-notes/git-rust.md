# Mejores Prácticas para Iniciar un Proyecto en GitHub con Rust
Este documento describe el flujo profesional recomendado para iniciar un proyecto nuevo de Rust usando Git y GitHub, siguiendo prácticas usadas en equipos serios de desarrollo.

---

## 1. Crear el repositorio en GitHub
1. Entra a GitHub.
2. Crea un **nuevo repositorio vacío**.
   - **No** agregues README.
   - **No** agregues .gitignore.
   - **No** agregues licencia.

Esto asegura que el repositorio remoto existe y será el origen único desde el inicio.

---
## 2. Clonar el repositorio vacío

```bash
git clone git@github.com:tu_usuario/tu_repo.git
cd tu_repo
```

---
## 3. Iniciar tu proyecto 

```bash
cargo init
```

>[!info]
`Cargo` genera estos archivos automaticamente.

- `Cargo.toml`
- `src/main.rs`
- `.gitignore`

---
## 4. Hacer el primer commit

```bash
git add .
git commit -m "feat: Initial cargo proyect"
git push origin master
```

