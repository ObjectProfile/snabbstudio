as yet unclassified
createDatasetFor: aMetric labeled: aLabel
	| ds |
	ds := RTData new.
	ds label: aLabel.
	ds dotShape color: (self colorFor: aMetric).
"	ds noDot."
	ds connectColor: (self colorFor: aMetric).
	ds points: self breathGroups.
	ds x: #time.
	ds y: aMetric.
	ds interaction noInteractions.
	ds interaction popupText: [ :e | (aMetric value: e key) round: 2 ].
	ds interaction highlightDataset: (self colorFor: aMetric) twiceDarker.
	^ ds