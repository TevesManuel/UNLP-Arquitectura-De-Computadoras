org 1000h
  NUM1 db 5
  NUM2 db 3
  RES  db ?
org 2000h
main: 
  MOV AL, NUM1
  MOV BL, NUM2
  MOV DX, 0
loop:
  add dl, al
  sub bl, 1
  jnz loop
  mov RES, dl
final:
  HLT
  END
