hooks
renderIn: aView
	| tab b groups col ds |
	tab := RTTabTable new input: source contents usingDelimiter: $,.
	tab removeFirstRow.
	tab convertColumnsAsInteger: #(id).
	tab convertColumnsAsFloat: #(score).
	b := RTGrapher new.
	b view: aView.
	groups := tab valuesGroupedBy: #benchmark.
	col := RTMultiLinearColorForIdentity new objects: groups keys.
	groups
		keysAndValuesDo: [ :key :value | 
			ds := RTData new.
			ds interaction
				popupText: [ :d | 
					self logCr: d.
					String
						streamContents: [ :s | 
							s
								nextPutAll: (d key at: #id) asString;
								nextPutAll: '@';
								nextPutAll: (d key at: #score) asString;
								nextPutAll: ' ';
								nextPutAll: (d key at: #unit) ] ].
			ds interaction
				when: TRMouseLeftClick
				do: [ :evt | (SBBuild from: evt element model key in: self evaluation) inspect ].
			ds dotShape color: (col rtValue: key).
			ds connectColor: (col rtValue: key).
			ds points: value.
			ds label: key.
			ds x: #id.
			ds y: #score.
			b add: ds.
			b axisX title: 'id'.
			b axisY title: 'score' ].
	b legend right.
	b build