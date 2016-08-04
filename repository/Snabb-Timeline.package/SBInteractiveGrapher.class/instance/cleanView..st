as yet unclassified
cleanView: aView
	aView edges copy do: [ :each | each view ifNotNil: [ each remove ] ].
	aView elements copy do: [ :each | each view ifNotNil: [ each remove ] ]