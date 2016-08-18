accessing - computed
dataSet
	| ds |
	dataset := ds := SBGroupedData new.
	ds dotShape color: Color purple.
	"ds lineBuilder shape: RTSVGPathLine new."
	"ds noDot."
	ds data: data.
	ds points: (self reduceToMinAndMax: self context).
	ds x: [ :x | x tsc - self data first tsc ].
	ds y: #lag.
	ds
		connectUsing:
			(RTSVGPathLine new
				path: [ :edge | self pathFor: edge ];
				color: Color purple).
	^ ds