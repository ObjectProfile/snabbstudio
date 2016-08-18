as yet unclassified
traceExample2
	^'---- TRACE 3 start counter.lua:32
0001  TGETS    2   0   0  ; "c"
0000  . . FUNCC               ; ffi.meta.__index
0002  ADDVV    2   2   1
0000  . . FUNCC               ; ffi.meta.__add
0003  TSETS    2   0   0  ; "c"
0000  . . FUNCC               ; ffi.meta.__newindex
0004  RET0     0   1
---- TRACE 3 IR
0001 >  cdt SLOAD  #1    T
0002    u16 FLOAD  0001  cdata.ctypeid
0003 >  int EQ     0002  +1311
0004    p64 FLOAD  0001  cdata.ptr
0005    u64 XLOAD  0004  
0006 }  cdt CNEWI  +12   0005
0007 >  num SLOAD  #2    T
0008    u64 CONV   0007  u64.num
0009    u64 ADD    0008  0005
0010 }  cdt CNEWI  +12   0009
0011    u64 XSTORE 0004  0009
---- TRACE 3 mcode 112
0bcaf7a4  mov dword [0x40caf410], 0x3
0bcaf7af  cmp dword [rdx+0x4], -0x0b
0bcaf7b3  jnz 0x0bca0010	->0
0bcaf7b9  mov ebp, [rdx]
0bcaf7bb  movzx ebx, word [rbp+0x6]
0bcaf7bf  cmp ebx, 0x51f
0bcaf7c5  jnz 0x0bca0010	->0
0bcaf7cb  mov rbx, [rbp+0x8]
0bcaf7cf  mov r15, [rbx]
0bcaf7d2  cmp dword [rdx+0xc], 0xfffeffff
0bcaf7d9  jnb 0x0bca0010	->0
0bcaf7df  movsd xmm7, [rdx+0x8]
0bcaf7e4  cvttsd2si rbp, xmm7
0bcaf7e9  test rbp, rbp
0bcaf7ec  jns 0x0bcaf7fc
0bcaf7ee  addsd xmm7, [0x41ee75e0]
0bcaf7f7  cvttsd2si rbp, xmm7
0bcaf7fc  add rbp, r15
0bcaf7ff  mov [rbx], rbp
0bcaf802  xor eax, eax
0bcaf804  mov ebx, 0x40883ef0
0bcaf809  mov r14d, 0x40caffa0
0bcaf80f  jmp 0x00413927
---- TRACE 3 stop -> return

---- TRACE 4 start script.lua:5
0012  TGETS    7   0   4  ; "add"
0013  MOV      8   2
0014  KSHORT   9   1
0015  CALL     7   1   3
0000  . JFUNCF   3   3         ; counter.lua:32
0001  . TGETS    2   0   0  ; "c"
0000  . . . FUNCC               ; ffi.meta.__index
0002  . ADDVV    2   2   1
0000  . . . FUNCC               ; ffi.meta.__add
0003  . TSETS    2   0   0  ; "c"
0000  . . . FUNCC               ; ffi.meta.__newindex
0004  . RET0     0   1
0016  FORL     3 => 0012
---- TRACE 4 IR
0001 >  int SLOAD  #5    CRI
0002 >  int LE     0001  +2147483646
0003    int SLOAD  #4    CI
0004 >  tab SLOAD  #1    T
0005    int FLOAD  0004  tab.hmask
0006 >  int EQ     0005  +7  
0007    p32 FLOAD  0004  tab.node
0008 >  p32 HREFK  0007  "add" @5
0009 >  fun HLOAD  0008
0010 >  cdt SLOAD  #3    T
0011 >  fun EQ     0009  counter.lua:32
0012    u16 FLOAD  0010  cdata.ctypeid
0013 >  int EQ     0012  +1311
0014    p64 FLOAD  0010  cdata.ptr
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
---- TRACE 4 mcode 207
0bcaf6d4  mov dword [0x40caf410], 0x4
0bcaf6df  movsd xmm7, [rdx+0x20]
0bcaf6e4  cvttsd2si eax, xmm7
0bcaf6e8  xorps xmm6, xmm6
0bcaf6eb  cvtsi2sd xmm6, eax
0bcaf6ef  ucomisd xmm7, xmm6
0bcaf6f3  jnz 0x0bca0010	->0
0bcaf6f9  jpe 0x0bca0010	->0
0bcaf6ff  cmp eax, 0x7ffffffe
0bcaf705  jg 0x0bca0010	->0
0bcaf70b  cvttsd2si ebx, [rdx+0x18]
0bcaf710  cmp dword [rdx+0x4], -0x0c
0bcaf714  jnz 0x0bca0010	->0
0bcaf71a  mov r8d, [rdx]
0bcaf71d  cmp dword [r8+0x1c], +0x07
0bcaf722  jnz 0x0bca0010	->0
0bcaf728  mov edi, [r8+0x14]
0bcaf72c  mov rsi, 0xfffffffb40cb9ab0
0bcaf736  cmp rsi, [rdi+0x80]
0bcaf73d  jnz 0x0bca0010	->0
0bcaf743  cmp dword [rdi+0x7c], -0x09
0bcaf747  jnz 0x0bca0010	->0
0bcaf74d  cmp dword [rdx+0x14], -0x0b
0bcaf751  jnz 0x0bca0010	->0
0bcaf757  mov edx, [rdx+0x10]
0bcaf75a  cmp dword [rdi+0x78], 0x4088f700
0bcaf761  jnz 0x0bca0010	->0
0bcaf767  movzx esi, word [rdx+0x6]
0bcaf76b  cmp esi, 0x51f
0bcaf771  jnz 0x0bca0010	->0
0bcaf777  mov rcx, [rdx+0x8]
0bcaf77b  mov rbp, [rcx]
0bcaf77e  add rbp, +0x01
0bcaf782  mov [rcx], rbp
0bcaf785  add ebx, +0x01
0bcaf788  cmp ebx, eax
0bcaf78a  jg 0x0bca0014	->1
->LOOP:
0bcaf790  add rbp, +0x01
0bcaf794  mov [rcx], rbp
0bcaf797  add ebx, +0x01
0bcaf79a  cmp ebx, eax
0bcaf79c  jle 0x0bcaf790	->LOOP
0bcaf79e  jmp 0x0bca001c	->3
---- TRACE 4 stop -> loop'.