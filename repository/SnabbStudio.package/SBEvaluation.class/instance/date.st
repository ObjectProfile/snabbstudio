accessing
date
	^ date ifNil: [ date := self retrieveEvalDate ]