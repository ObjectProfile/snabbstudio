exampleText
example1
	^'---- TRACE 3 start script2.lua:5
0012  MODVN    7   6   1  ; 2
0013  ISNEN    7   2      ; 0
0014  JMP      7 => 0020
0015  TGETS    7   0   4  ; "add"
0016  MOV      8   2
0017  KSHORT   9   1
0018  CALL     7   1   3
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
0019  JMP      7 => 0024
0024  FORL     3 => 0012
---- TRACE 3 IR
0001 >  int SLOAD  #5    CRI
0002 >  int LE     0001  +2147483646
0003    int SLOAD  #4    CI
0004    int BAND   0003  +1  
0005 >  int EQ     0004  +0  
0006 >  tab SLOAD  #1    T
0007    int FLOAD  0006  tab.hmask
0008 >  int EQ     0007  +15 
0009    p32 FLOAD  0006  tab.node
0010 >  p32 HREFK  0009  "add" @13
0011 >  fun HLOAD  0010
0012 >  cdt SLOAD  #3    T
0013 >  fun EQ     0011  counter.lua:80
0014    u16 FLOAD  0012  cdata.ctypeid
0015 >  int EQ     0014  +1273
0016    p64 ADD    0012  +8  
0017    u64 XLOAD  0016  
0019  + u64 ADD    0017  +1  
0021    u64 XSTORE 0016  0019
0022  + int ADD    0003  +1  
0023 >  int LE     0022  0001
0024 ------ LOOP ------------
0025    int BAND   0022  +1  
0026 >  int EQ     0025  +0  
0027  + u64 ADD    0019  +1  
0028    u64 XSTORE 0016  0027
0029  + int ADD    0022  +1  
0030 >  int LE     0029  0001
0031    int PHI    0022  0029
0032    u64 PHI    0019  0027
---- TRACE 3 mcode 236
0bcaf9d4  mov dword [0x416ac410], 0x3
0bcaf9df  movsd xmm7, [rdx+0x20]
0bcaf9e4  cvttsd2si eax, xmm7
0bcaf9e8  xorps xmm6, xmm6
0bcaf9eb  cvtsi2sd xmm6, eax
0bcaf9ef  ucomisd xmm7, xmm6
0bcaf9f3  jnz 0x0bca0010	->0
0bcaf9f9  jpe 0x0bca0010	->0
0bcaf9ff  cmp eax, 0x7ffffffe
0bcafa05  jg 0x0bca0010	->0
0bcafa0b  cvttsd2si ebx, [rdx+0x18]
0bcafa10  test ebx, 0x1
0bcafa16  jnz 0x0bca0014	->1
0bcafa1c  cmp dword [rdx+0x4], -0x0c
0bcafa20  jnz 0x0bca0018	->2
0bcafa26  mov r8d, [rdx]
0bcafa29  cmp dword [r8+0x1c], +0x0f
0bcafa2e  jnz 0x0bca0018	->2
0bcafa34  mov esi, [r8+0x14]
0bcafa38  mov rdi, 0xfffffffb416b69e8
0bcafa42  cmp rdi, [rsi+0x140]
0bcafa49  jnz 0x0bca0018	->2
0bcafa4f  cmp dword [rsi+0x13c], -0x09
0bcafa56  jnz 0x0bca0018	->2
0bcafa5c  cmp dword [rdx+0x14], -0x0b
0bcafa60  jnz 0x0bca0018	->2
0bcafa66  mov ecx, [rdx+0x10]
0bcafa69  cmp dword [rsi+0x138], 0x413fe7b0
0bcafa73  jnz 0x0bca0018	->2
0bcafa79  movzx edx, word [rcx+0x6]
0bcafa7d  cmp edx, 0x4f9
0bcafa83  jnz 0x0bca0018	->2
0bcafa89  mov rbp, [rcx+0x8]
0bcafa8d  add rbp, +0x01
0bcafa91  mov [rcx+0x8], rbp
0bcafa95  add ebx, +0x01
0bcafa98  cmp ebx, eax
0bcafa9a  jg 0x0bca001c	->3
->LOOP:
0bcafaa0  test ebx, 0x1
0bcafaa6  jnz 0x0bca0024	->5
0bcafaac  add rbp, +0x01
0bcafab0  mov [rcx+0x8], rbp
0bcafab4  add ebx, +0x01
0bcafab7  cmp ebx, eax
0bcafab9  jle 0x0bcafaa0	->LOOP
0bcafabb  jmp 0x0bca0028	->6
---- TRACE 3 stop -> loop

---- TRACE 4 start 3/5 script2.lua:9
0020  TGETS    7   0   4  ; "add"
0021  MOV      8   2
0022  KSHORT   9  10
0023  CALL     7   1   3
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
0024  JFORL    3   3
---- TRACE 4 IR
0001    int SLOAD  #4    PI
0002    int SLOAD  #5    PRI
0003 >  tab SLOAD  #1    T
0004    int FLOAD  0003  tab.hmask
0005 >  int EQ     0004  +15 
0006    p32 FLOAD  0003  tab.node
0007 >  p32 HREFK  0006  "add" @13
0008 >  fun HLOAD  0007
0009 >  cdt SLOAD  #3    T
0010 >  fun EQ     0008  counter.lua:80
0011    u16 FLOAD  0009  cdata.ctypeid
0012 >  int EQ     0011  +1273
0013    p64 ADD    0009  +8  
0014    u64 XLOAD  0013  
0015 }  cdt CNEWI  +12   0014
0016    u64 ADD    0014  +10 
0017 }  cdt CNEWI  +12   0016
0018    u64 XSTORE 0013  0016
0019    int ADD    0001  +1  
0020 >  int LE     0019  0002
0021    num CONV   0019  num.int
---- TRACE 4 mcode 171
0bcaf922  mov dword [0x416ac410], 0x4
0bcaf92d  mov edx, [0x416ac4b4]
0bcaf934  cmp dword [rdx+0x4], -0x0c
0bcaf938  jnz 0x0bca0010	->0
0bcaf93e  mov ebp, [rdx]
0bcaf940  cmp dword [rbp+0x1c], +0x0f
0bcaf944  jnz 0x0bca0010	->0
0bcaf94a  mov ebp, [rbp+0x14]
0bcaf94d  mov rdi, 0xfffffffb416b69e8
0bcaf957  cmp rdi, [rbp+0x140]
0bcaf95e  jnz 0x0bca0010	->0
0bcaf964  cmp dword [rbp+0x13c], -0x09
0bcaf96b  jnz 0x0bca0010	->0
0bcaf971  cmp dword [rdx+0x14], -0x0b
0bcaf975  jnz 0x0bca0010	->0
0bcaf97b  mov r15d, [rdx+0x10]
0bcaf97f  cmp dword [rbp+0x138], 0x413fe7b0
0bcaf989  jnz 0x0bca0010	->0
0bcaf98f  movzx ebp, word [r15+0x6]
0bcaf994  cmp ebp, 0x4f9
0bcaf99a  jnz 0x0bca0010	->0
0bcaf9a0  mov rbp, [r15+0x8]
0bcaf9a4  add rbp, +0x0a
0bcaf9a8  mov [r15+0x8], rbp
0bcaf9ac  add ebx, +0x01
0bcaf9af  cmp ebx, eax
0bcaf9b1  jg 0x0bca0014	->1
0bcaf9b7  xorps xmm7, xmm7
0bcaf9ba  cvtsi2sd xmm7, ebx
0bcaf9be  movsd [rdx+0x30], xmm7
0bcaf9c3  movsd [rdx+0x18], xmm7
0bcaf9c8  jmp 0x0bcaf9d4
---- TRACE 4 stop -> 3
'