org 0x7c00
init:
  mov si, message
  mov ah, 0x0e
showMessage:
  lodsb    
  cmp al, 0 
  je end  
  int 0x10 
  jmp showMessage 
end:
  hlt
message: db "Hello MBR!!", 0 
times 510-($-$$) db 0
dw 0xaa55
