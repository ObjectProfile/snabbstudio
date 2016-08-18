world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #SnabbStudio) icon: SnabbIcons snabbSmallIcon.
	(aBuilder
		item: 'Local Traces';
		parent: #SnabbStudio) action: [ self current inspect ]