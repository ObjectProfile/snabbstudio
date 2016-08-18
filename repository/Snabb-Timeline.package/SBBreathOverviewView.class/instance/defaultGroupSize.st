as yet unclassified
defaultGroupSize
	^ ((self breaths sum: #cyclesPerBreath) / grapher extent x / 1e6) asFloat
	"	^ 1 max: (self breaths last time / grapher extent x / 1e6) asFloat"