grammar-mcode
mcodeLine
	^(mcodeAddress trim) ,
		(mcodeOpcode trim) ,
		(mcodeOperands) ,
		(mcodeExit optional)