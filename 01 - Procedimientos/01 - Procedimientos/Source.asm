; ============================================================
; Materia: Lenguajes de Interfaz
; Alumno: Jose Haziel Valenzuela Silva
; Horario: 10:00-11:00
; Docente: Dr Jose Luis Medina Jimenez
; Practica: Procedimientos
; ============================================================

INCLUDE Irvine32.inc 

.data
    mensajeInicio BYTE "Inicio del programa", 0
    mensajeProcedimiento BYTE "Estoy dentro del procedimiento", 0
    mensajeFin BYTE "Fin del programa", 0

.code
main PROC
    ; Imprime mensaje de inicio
    mov edx, OFFSET mensajeInicio
    call WriteString
    call Crlf

    mov eax, 10  ;Valor de prueba antes del 1er llamado

    call mostrarAviso  ;1er llamado al procedimiento

    mov eax, 20  ;Valor de prueba antes del 2do llamado

    call mostrarAviso  ;2do llamado al procedimiento

    mov eax, 30  ;Valor de prueba final

    ; Imprime mensaje de fin
    mov edx, OFFSET mensajeFin
    call WriteString
    call Crlf

    exit   ;Termina el programa
main ENDP

;Procedimiento que imprime un aviso y regresa al llamador
mostrarAviso PROC
    mov edx, OFFSET mensajeProcedimiento
    call WriteString ;Imprime el mensaje
    call Crlf  ;Salto de línea
    ret   ;Regresa a main
mostrarAviso ENDP

END main