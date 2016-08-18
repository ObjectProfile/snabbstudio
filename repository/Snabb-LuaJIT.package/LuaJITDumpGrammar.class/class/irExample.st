exampleText
irExample
	^'001 >  int SLOAD  #5    CRI
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
'