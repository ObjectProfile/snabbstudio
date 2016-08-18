accessing
totalCycles
	"Use explicit #ifEmpty: guard, because #totalCycles is called from grouper when no entries have been added yet."

	entries ifEmpty: [ ^ 0 ].
	^ entries sum: #cyclesPerBreath