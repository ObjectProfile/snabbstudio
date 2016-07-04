world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: 'Snabb Hydra Evaluation')
		parent: #MostUsedTools;
		action: [ (UIManager default request: 'Hydra eval number')
				ifNotNil: [ :num | (SHEvaluation new id: num) inspect ] ]