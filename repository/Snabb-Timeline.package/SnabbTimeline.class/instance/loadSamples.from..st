loading
loadSamples: numberOfSamplesToLoad from: filename
	"Load a number of samples for the whole file"

	| prev fileSize totalNumberOfEntries step stepInBytes |
	stream := FileStream readOnlyFileNamed: filename.
	stream binary.
	fileSize := stream size.
	totalNumberOfEntries := ((fileSize - self headerSize)
		/ self entrySizeInBytes) asInteger - 1.
	step := (totalNumberOfEntries / numberOfSamplesToLoad) asInteger - 1.
	stepInBytes := step * self entrySizeInBytes.
	header := stream next: self headerSize.
	prev := nil.
	records := OrderedCollection new.
	'Loading ' , numberOfSamplesToLoad asString , ' records...'
		displayProgressFrom: 1
		to: (numberOfSamplesToLoad / self reducingFactorForProgressBar) asInteger
		during: [ :bar | 
			(1 to: numberOfSamplesToLoad)
				do: [ :i | 
					| p |
					i \\ self reducingFactorForProgressBar == 0
						ifTrue: [ bar value: i ].
					p := stream position.
					prev := SnabbTimelineEntry new
						readFrom: stream
						previousEntry: prev
						timeline: self.
					stream position: p + stepInBytes.
					records add: prev ] ]