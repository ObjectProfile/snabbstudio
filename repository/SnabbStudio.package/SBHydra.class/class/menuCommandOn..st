world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: 'Hydra Builds')
		parent: #SnabbStudio;
		action: [ SBHydra current inspect ]