as yet unclassified
createBreaths
	| source |
	source := {0 -> #'start $breath'.
	500 -> #'end $breath'.
	550 -> #'start $breath'.
	1000 -> #'end $breath'.
	1600 -> 'start $breath'.
	1650 -> 'end $breath'.
	1800 -> 'start $breath'.
	2200 -> 'end $breath'}.
	^ SBEntryGrouper new
		groupEntries:
			(source
				collect: [ :each | 
					SBTimelineEntry new
						tsc: each key;
						lag: 0;
						messageTemplate: each value ])