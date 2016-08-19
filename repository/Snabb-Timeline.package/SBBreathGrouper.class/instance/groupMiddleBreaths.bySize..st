as yet unclassified
groupMiddleBreaths: aCollection bySize: aNumber
	"I group all breaths except for the first one and the last one.
	The end ones are separate to have fixed-size graph."

	^ Array
		streamContents: [ :s | 
			s
				nextPut: (SBBreathGroup new add: aCollection first);
				nextPutAll: (self groupBreaths: (aCollection copyFrom: 2 to: aCollection size - 2) bySize: aNumber);
				nextPut: (SBBreathGroup new add: aCollection last) ]