gt-inspector-extension
gtTimelineIn: composite
	<gtInspectorPresentationOrder: 30>
	self ensureTimelineDownloaded.
	composite roassal2
		title: 'Timeline';
		initializeView: [ | g |
			g := SBInteractiveGrapher new.
			g view: RTView new.
			g data: (SBTimelineReader new readFile: self timelineFile) records.
			g zoom: 1.
			g maxPoints: 10.
			g build.
			g view @ RTResizeableViewContextInteraction.
			g view ]