org 3000h
rut:
  mov bx, 3          ; addr 3000h
  ret                ; addr 3002h
org 2000h
  call rut           ; addr 2000h
  add cx, 5          ; addr 2002h
  call rut           ; addr 2004h
  hlt                ; addr 2006h
end

;Ejecucion
;--------------------------------------------------------------------------------
; IP 2000h: Carga la instruccion CALL y los operandos
; IP 2003h: Ejecuta CALL con los operandos
; IP 2003h: Guarda IP en SP en 7FFFh:20;7FFEh:03
; IP 2003h: Campia IP al adress de los operandos (3000h)
; IP 3000h: Carga la instruccion de 3000h, Carga los operandos
; IP 3004h: Ejecuta instruccion y guarda resultados
; IP 3005h: Ejecuta RET
; IP 3005h: POP SP & retorna a IP: 2003h (guardado previamente en la pila)
; IP 2003h: Se carga intruccion y operandos