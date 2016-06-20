initialization
load: filename
	| prev |
	stream := FileStream readOnlyFileNamed: filename.
	stream binary.
	header := stream next: 64.
	prev := nil.
	records := OrderedCollection new.
	(1 to: 1000) do: [ :i | 
		prev := SnabbTimelineEntry new readFrom: stream previousEntry: prev timeline: self.
		records add: prev ].
"	records := (1 to: 2000000) collect: [ :i | 
		prev := SnabbTimelineEntry new readFrom: stream previousEntry: prev timeline: self. prev. ]."
