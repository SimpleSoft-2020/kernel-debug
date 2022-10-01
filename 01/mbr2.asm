jmp near start
text db 'H',0x17,'e',0x17,'l',0x17,'l',0x17,'o',0x17,' ',0x07,'M',0x47,'B',0x47,'R',0x47,'!',0x47,'!',0x47  
start:
        mov ax,0x7c0	
        mov ds,ax
        mov ax,0xb800	
        mov es,ax        
        cld
        mov si,text
        mov di,0        
        mov cx,(start-text)/2
        rep movsw
times 510-($-$$) db 0					  
        db 0x55,0xaa
