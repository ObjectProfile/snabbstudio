as yet unclassified
testTrace
	^self parse: '---- TRACE 3 start script.lua:5
0012  TGETS    7   0   4  ; "add"
0013  MOV      8   2
0014  KSHORT   9   1
0015  CALL     7   1   3
0000  . FUNCF    4          ; counter.lua:80
0001  . TGETS    2   0   0  ; "c"
0000  . . . FUNCC               ; ffi.meta.__index
0002  . ISTC     3   1
0003  . JMP      3 => 0005
0005  . ADDVV    2   2   3
0000  . . . FUNCC               ; ffi.meta.__add
0006  . TSETS    2   0   0  ; "c"
0000  . . . FUNCC               ; ffi.meta.__newindex
0007  . RET0     0   1
0016  FORL     3 => 0012
---- TRACE 3 IR
0001 >  int SLOAD  #5    CRI
0002 >  int LE     0001  +2147483646
0003    int SLOAD  #4    CI
0004 >  tab SLOAD  #1    T
0005    int FLOAD  0004  tab.hmask
0006 >  int EQ     0005  +15 
0007    p32 FLOAD  0004  tab.node
0008 >  p32 HREFK  0007  "add" @13
0009 >  fun HLOAD  0008
0010 >  cdt SLOAD  #3    T
0011 >  fun EQ     0009  counter.lua:80
0012    u16 FLOAD  0010  cdata.ctypeid
0013 >  int EQ     0012  +1273
0014    p64 ADD    0010  +8  
0015    u64 XLOAD  0014  
0017  + u64 ADD    0015  +1  
0019    u64 XSTORE 0014  0017
0020  + int ADD    0003  +1  
0021 >  int LE     0020  0001
0022 ------ LOOP ------------
0023  + u64 ADD    0017  +1  
0024    u64 XSTORE 0014  0023
0025  + int ADD    0020  +1  
0026 >  int LE     0025  0001
0027    int PHI    0020  0025
0028    u64 PHI    0017  0023
---- TRACE 3 mcode 212
0bcaf9f0  mov dword [0x41693410], 0x3
0bcaf9fb  movsd xmm7, [rdx+0x20]
0bcafa00  cvttsd2si eax, xmm7
0bcafa04  xorps xmm6, xmm6
0bcafa07  cvtsi2sd xmm6, eax
0bcafa0b  ucomisd xmm7, xmm6
0bcafa0f  jnz 0x0bca0010	->0
0bcafa15  jpe 0x0bca0010	->0
0bcafa1b  cmp eax, 0x7ffffffe
0bcafa21  jg 0x0bca0010	->0
0bcafa27  cvttsd2si ebx, [rdx+0x18]
0bcafa2c  cmp dword [rdx+0x4], -0x0c
0bcafa30  jnz 0x0bca0010	->0
0bcafa36  mov r8d, [rdx]
0bcafa39  cmp dword [r8+0x1c], +0x0f
0bcafa3e  jnz 0x0bca0010	->0
0bcafa44  mov esi, [r8+0x14]
0bcafa48  mov rdi, 0xfffffffb4169d9e8
0bcafa52  cmp rdi, [rsi+0x140]
0bcafa59  jnz 0x0bca0010	->0
0bcafa5f  cmp dword [rsi+0x13c], -0x09
0bcafa66  jnz 0x0bca0010	->0
0bcafa6c  cmp dword [rdx+0x14], -0x0b
0bcafa70  jnz 0x0bca0010	->0
0bcafa76  mov ecx, [rdx+0x10]
0bcafa79  cmp dword [rsi+0x138], 0x4172d7b0
0bcafa83  jnz 0x0bca0010	->0
0bcafa89  movzx edx, word [rcx+0x6]
0bcafa8d  cmp edx, 0x4f9
0bcafa93  jnz 0x0bca0010	->0
0bcafa99  mov rbp, [rcx+0x8]
0bcafa9d  add rbp, +0x01
0bcafaa1  mov [rcx+0x8], rbp
0bcafaa5  add ebx, +0x01
0bcafaa8  cmp ebx, eax
0bcafaaa  jg 0x0bca0014	->1
->LOOP:
0bcafab0  add rbp, +0x01
0bcafab4  mov [rcx+0x8], rbp
0bcafab8  add ebx, +0x01
0bcafabb  cmp ebx, eax
0bcafabd  jle 0x0bcafab0	->LOOP
0bcafabf  jmp 0x0bca001c	->3
---- TRACE 3 stop -> loop
'
	rule: #trace