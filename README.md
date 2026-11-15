# Prácticas de Assembly con Irvine32

Repositorio con las prácticas de la materia **Lenguajes de Interfaz**,
desarrolladas en lenguaje ensamblador x86 (32 bits) usando la
librería **Irvine32** sobre Windows.

## Datos del alumno

| Campo        | Valor                          |
|--------------|--------------------------------|
| **Alumno**   | Jose Haziel Valenzuela Silva   |
| **Materia**  | Lenguajes de Interfaz          |
| **Horario**  | 10:00 - 11:00                  |
| **Docente**  | Dr. José Luis Medina Jiménez   |

## 📑 Índice

1. [Práctica 1: Macros](#práctica-1-macros)
   - 📄 Código: [`practica1-macros/macros.asm`](./practica1-macros/macros.asm)
2. [Práctica 2: Procedimientos](#práctica-2-procedimientos)
   - 📄 Código: [`practica2-procedimientos/procedimientos.asm`](./practica2-procedimientos/procedimientos.asm)

---

## Práctica 1: Macros

### ¿Qué hace?
Define la macro `MostrarMensaje`, que imprime una cadena y un salto
de línea. Se usa dos veces en `main` para mostrar un mensaje de
bienvenida y otro de despedida.

### Comprobaciones al ejecutar
- Compila y enlaza sin errores en Visual Studio (x86) con Irvine32.
- Muestra "BIENVENIDOS A TU SALON FAVORITO" y luego
  "NOS VEMOS, VUELVA PRONTO", cada uno en su línea.
- El programa termina limpiamente con `exit`.

---

## Práctica 2: Procedimientos

### ¿Qué hace?
El programa define el procedimiento `mostrarAviso`, que imprime el
mensaje "Estoy dentro del procedimiento". Desde `main` se llama dos
veces (usando `call`), mostrando al inicio y al final del programa
sendos mensajes de control.

### Comprobaciones al ejecutar
- Compila y enlaza sin errores en Visual Studio (x86) con Irvine32.
- El procedimiento se ejecuta correctamente en cada llamado y
  retorna con `ret` sin errores.
- El programa termina limpiamente con `exit`.
