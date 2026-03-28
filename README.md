# 🏥 Sistema de Gestión de Consultas Médicas - Examen Final

Este repositorio contiene el diseño, la estructura y la implementación de una base de datos relacional para la gestión integral de una clínica, permitiendo el control de médicos, especialidades, pacientes y el registro histórico de consultas.

---

## 📋 Descripción del Proyecto
El objetivo de esta base de datos es centralizar la información operativa de un centro de salud, facilitando la trazabilidad entre el personal médico y la atención brindada a los pacientes. Se enfoca en la integridad referencial y la optimización de consultas complejas.

## 🛠️ Tecnologías Utilizadas
* **Motor:** MySQL 8.0 / MariaDB
* **Entorno:** Docker con imagen oficial de MySQL
* **Gestor:** Adminer 4.8.1 / DBeaver

---

## 📐 Modelo de Datos y Estructura

La base de datos se compone de las siguientes tablas principales:

| Tabla | Función | Llave Primaria (PK) |
| :--- | :--- | :--- |
| **`medico`** | Almacena los datos de los profesionales de salud. | `cedula_medico` |
| **`especialidad`** | Catálogo de áreas médicas (Cardiología, Pediatría, etc.). | `id_especialidad` |
| **`medico_especialidad`** | Tabla puente para la relación muchos a muchos. | `(cedula, id_esp)` |
| **`paciente`** | Registro de usuarios y datos de contacto. | `cedula` |
| **`consulta`** | Registro transaccional de citas y diagnósticos. | `id_consulta` |

### Lógica de Negocio
1. **Relación Muchos a Muchos:** Un médico puede estar certificado en múltiples especialidades y una especialidad puede ser ejercida por varios médicos.
2. **Relación Uno a Muchos:** Un médico atiende múltiples consultas; un paciente puede agendar múltiples consultas.
3. **Integridad:** Se utilizan `FOREIGN KEYS` con restricciones para evitar la pérdida de consistencia en los datos.

---



