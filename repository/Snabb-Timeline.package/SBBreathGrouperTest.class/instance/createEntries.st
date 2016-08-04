instance creation
createEntries
	| source |
	source := {0 -> #'start traffic processing'.
	10 -> #'start $breath'.
	100 -> #'initialized breath'.
	500 -> #'end $breath'.
	550 -> #'start $breath'.
	1000 -> #'end $breath'.
	1500 -> 'ran timers'.
	1600 -> 'start $breath'.
	1650 -> 'end $breath'}.
	^ source
		collect: [ :each | 
			SnabbTimelineEntry new
				tsc: each key;
				lag: 0;
				messageText: each value ]