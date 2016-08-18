as yet unclassified
groupBreaths: aCollection bySize: aNumber
	"`aNumber` - A number of cycles in millions (e.g. 100 = 100M cycles)."

	| groups group max |
	max := aNumber * 1e6.
	groups := OrderedCollection new.
	group := SBBreathGroup new.
	aCollection
		do: [ :each | 
			group totalCycles >= max
				ifTrue: [ groups add: group.
					group := SBBreathGroup new ].
			group add: each ].
	group entries ifNotEmpty: [ groups add: group ].
	^ groups