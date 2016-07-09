gt-inspector-extension
gtInspectorCsvIn: composite
	<gtInspectorPresentationOrder: 30>
	self ensureDownloaded.
	^ (self benchTable gtInspectorTableIn: composite) title: 'CSV contents'