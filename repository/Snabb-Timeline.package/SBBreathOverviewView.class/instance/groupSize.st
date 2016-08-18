accessing
groupSize
	"in Millions"

	^ groupSize ifNil: [ groupSize := self defaultGroupSize ]