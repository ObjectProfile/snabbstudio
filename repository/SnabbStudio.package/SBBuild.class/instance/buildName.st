accessing
buildName
	^ (self buildNameMapping at: self benchmark ifAbsent: [ self notFoundError ]) , '-num-' , self id asString