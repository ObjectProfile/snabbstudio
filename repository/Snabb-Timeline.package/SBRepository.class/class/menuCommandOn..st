world menu
menuCommandOn: aBuilder
	<worldMenu>
	aBuilder item: #SnabbStudio.
	
	((aBuilder
		item: 'Snabb Studio Launcher';
		parent: #SnabbStudio))
	action: [ self new inspect ].
	
	((aBuilder
		item: 'Select path';
		parent: #SnabbStudio))
	action: [ path := nil. self new inspect  ].