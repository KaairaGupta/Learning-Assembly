section	.text
   global_start     ;must be declared for linker (ld)
_start:             ;tell linker entry point
	
   ;writing the name 'Kaaira Gupta'
   mov	edx,13       ;message length
   mov	ecx, name   ;message to write
   mov	ebx,1       ;file descriptor (stdout)
   mov	eax,4       ;system call number (sys_write)
   int	0x80        ;call kernel
	
   mov	[name],  qword 'Prakhar'    ; Changed the name to Prakhar Gupta
	
   ;writing the name 'Prakhar Gupta'
   mov	edx,8      ;message length
   mov	ecx,name    ;message to write
   mov	ebx,1       ;file descriptor (stdout)
   mov	eax,4       ;system call number (sys_write)
   int	0x80        ;call kernel
	
   mov	eax,1       ;system call number (sys_exit)
   int	0x80        ;call kernel

section	.data
name dw 'Kaaira Gupta'
