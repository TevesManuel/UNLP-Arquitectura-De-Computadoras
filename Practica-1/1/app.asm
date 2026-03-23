ORG 2000H
main:
  mov ax, 5
  mov bx, 3
  push ax
  push ax
  push bx
  pop bx
  pop bx
  pop ax
final:
  HLT
  END