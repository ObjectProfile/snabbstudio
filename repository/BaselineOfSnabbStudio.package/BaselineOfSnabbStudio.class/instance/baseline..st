baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				package: 'Snabb-Timeline';
				package: 'SnabbStudio'.
			spec group: 'default' with: #('Snabb-Timeline' 'SnabbStudio') ]