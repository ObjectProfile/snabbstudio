accessing
timeline
	^ timeline ifNil: [ timeline := self loadTimeline ]