as yet unclassified
groupEntries: aCollection
	| groups breath time |
	groups := OrderedCollection new.
	breath := nil.
	time := 0.
	aCollection
		do: [ :each | 
			(self isBreathStart: each)
				ifTrue: [ breath := SBBreath new.
					breath time: time.
					groups add: breath.
					breath add: each.
					time := time + each lag ]
				ifFalse: [ (self isBreathEnd: each)
						ifTrue: [ breath add: each.
							time := time + each lag.
							breath := nil ]
						ifFalse: [ breath
								ifNil: [ breath := SBInterBreath new.
									breath time: time.
									groups add: breath ].
							breath add: each.
							time := time + each lag ] ] ].
	^ groups