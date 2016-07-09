adding
addEvaluation
	| id |
	id := UIManager default request: 'Hydra eval number'.
	id ifNil: [ ^ self ].
	evaluations detect: [ :each | each id = id ] ifFound: [ ^ self ].
	evaluations add: (SBEvaluation new id: id)