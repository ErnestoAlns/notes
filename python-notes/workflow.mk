# 🛡️ ARCHIVO: workflow.md - Arquitectura de Registro de Usuario

## Flujo de Trabajo: Registro de Usuario (Auth-Tasker)

Este flujo aplica la arquitectura de tres capas (Rutas, Servicio, Repositorio) para garantizar la seguridad (*hashing*) y la estabilidad de la base de datos, siguiendo el principio de **Separación de Responsabilidades**.

---

## 1. La Capa de Rutas (Controller) 🌐

**Rol:** **Guardia y Delegador.** Se encarga de la entrada de datos, la validación inicial y el control de la transacción.

| Paso | Lógica Clave | Modelo Utilizado |
| :--- | :--- | :--- |
| **Validación** | `user_data = UserRegister.model_validate(request.form)` | **Modelo de Entrada** (`UserRegister`): Limpia y tipa el *input* del usuario. |
| **Delegación** | `auth_service.register_user(conn, user_data)` | Llama al Servicio, pasándole el objeto limpio. Delega **toda la lógica**. |
| **Transacción** | `conn.commit()` / `conn.rollback()` | Gestiona el punto de control. Confirma si el Servicio fue exitoso; deshace si hubo excepción. |
| **Flujo** | `return redirect(url_for('auth.login'))` | Implementa el patrón **POST-Redirect-GET (PRG)**. |

---

## 2. La Capa de Servicio (Service) 🧠

**Rol:** **Procesador y Lógica de Negocio.** Aplica las reglas de la aplicación (el *hashing* es la regla de seguridad).

| Paso | Lógica Clave | Responsabilidad |
| :--- | :--- | :--- |
| **Generación** | `generated_password = generate_secure_password()` | **Lógica UX:** Genera la clave en texto plano. |
| **Hashing** | `hashed_password = hash_password(generated_password)` | **Lógica de Seguridad:** Transforma el texto plano en el *hash*. Esta función **DEBE** vivir aquí. |
| **Coordinación** | `repo.insert_user(conn, ..., hashed_password, ...)` | Llama al Repositorio, pasando los datos originales **y el dato transformado** (`hashed_password`). |
| **Devolución** | `return new_user_model, generated_password` | Devuelve el **Modelo de Dominio** (`UserModel`) y la contraseña generada (para el *flash* al usuario). |

---

## 3. La Capa de Repositorio (Repository) 💾

**Rol:** **Ejecutor SQL.** Su única misión es la interacción directa con la base de datos (CRUD).

| Paso | Lógica Clave | Responsabilidad |
| :--- | :--- | :--- |
| **SQL** | `cursor.execute(INSERT INTO users ...)` | Contiene **TODAS** las funciones que ejecutan código SQL. No conoce la lógica de *hashing*. |
| **Mapeo** | `UserModel.model_validate(sql_result)` | Convierte el resultado crudo de MySQL (tupla/diccionario) en el objeto **Modelo de Dominio** (`UserModel`). |
| **Errores DB** | `raise ValueError("El nombre de usuario ya está en uso.")` | Traduce errores de SQL específicos (ej., `UNIQUE constraint failed`) en excepciones de Python claras para el Servicio. |
