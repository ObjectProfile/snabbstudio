baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				project: 'Roassal2'
				with: [ spec
						className: #ConfigurationOfRoassal2;
						versionString: #development;
						repository: 'http://smalltalkhub.com/mc/ObjectProfile/Roassal2/main/' ].
			spec
				project: 'XMLParserHTML'
				with: [ spec
						className: #ConfigurationOfXMLParserHTML;
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLParserHTML/main/' ].
			spec
				package: 'Snabb-Timeline' with: [ spec requires: #(Roassal2) ];
				package: 'SnabbStudio' with: [ spec requires: #(XMLParserHTML) ].
			spec group: 'default' with: #('Snabb-Timeline' 'SnabbStudio') ]