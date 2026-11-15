; ============================================================
; Materia: Lenguajes de Interfaz
; Alumno: Jose Haziel Valenzuela Silva
; Horario: 10:00-11:00
; Docente: Dr Jose Luis Medina Jimenez
; Practica: Macros
; ============================================================

INCLUDE Irvine32.inc

; Macro que imprime una cadena y un salto de línea
MostrarMensaje MACRO texto
    mov edx, OFFSET texto ;EDX = dirección de la cadena
    call WriteString ;Imprime la cadena
    call Crlf   ;Salto de línea
ENDM

.data
    MensajeInicio BYTE "BIENVENIDOS A TU SALON FAVORITO", 0
    MensajeFin    BYTE "NOS VEMOS, VUELVA PRONTO", 0

.code
main PROC
    MostrarMensaje MensajeInicio ;Imprime la bienvenida
    MostrarMensaje MensajeFin  ;Imprime la despedida
    exit  ;Termina el programa
main ENDP

END main