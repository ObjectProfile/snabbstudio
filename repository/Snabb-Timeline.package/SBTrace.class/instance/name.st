accessing
name
	^ name ifNil: [ ^ self fileReference basename ]