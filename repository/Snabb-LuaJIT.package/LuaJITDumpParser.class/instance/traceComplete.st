as yet unclassified
traceComplete
	^super traceComplete map: [ :bc :ir :mc :end | LuaJITDump new bc: bc; ir: ir; mc: mc; yourself]