gt-inspector-extension
gtInspectorBenchmarkIn: composite
	<gtInspectorPresentationOrder: 30>
	self ensureDownloaded.
	composite roassal2
		title: 'CSV benchmark';
		initializeView: [ | b |
			b := SnabbBenchmark new.
			b source: self benchCsvFile.
			b evaluation: self.
			b build.
			b view ]