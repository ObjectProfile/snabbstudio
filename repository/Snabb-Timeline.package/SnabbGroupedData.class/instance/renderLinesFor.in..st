utility
renderLinesFor: elems in: aView
	"Render the lines between elements if necessary"

	| t l |
	shouldConnect
		ifFalse: [ ^ self ].
	t := elems first.
	firstElement := elems first.
	lastElement := elems last.
	elems allButFirst
		do: [ :tt | 
			l := lineBuilder edgeFrom: t to: tt.
			interaction setUpElement: l.
			aView add: l.
			t := tt ]