initialization
load: aLimit from: filename
	| prev |
	stream := FileStream readOnlyFileNamed: filename.
	stream binary.
	header := stream next: 64.
	prev := nil.
	records := OrderedCollection new.
	'Loading ' , aLimit asString , ' records...'
		displayProgressFrom: 1
		to: aLimit
		during: [ :bar | 
			(1 to: aLimit)
				do: [ :i | 
					bar value: i.
					prev := SnabbTimelineEntry new readFrom: stream previousEntry: prev timeline: self.
					records add: prev ] ]