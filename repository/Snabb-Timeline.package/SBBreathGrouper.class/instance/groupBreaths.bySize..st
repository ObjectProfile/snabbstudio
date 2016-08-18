as yet unclassified
groupBreaths: aCollection bySize: aNumber
	"`aNumber` - A number of cycles in millions (e.g. 100 = 100M cycles)."

	| groups group size max |
	max := aNumber * 1e6.
	groups := OrderedCollection new.
	group := SBBreathGroup new.
	size := 0.
	aCollection
		do: [ :each | 
			size >= max
				ifTrue: [ groups add: group.
					group := SBBreathGroup new.
					size := 0 ].
			group add: each.
			size := size + each cyclesPerBreath ].
	group entries ifNotEmpty: [ groups add: group ].
	^ groups