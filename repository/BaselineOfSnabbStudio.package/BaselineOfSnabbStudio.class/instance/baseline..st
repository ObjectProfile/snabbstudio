baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec
				project: 'XMLParserHTML'
				with: [ spec
						className: #ConfigurationOfXMLParserHTML;
						versionString: #stable;
						repository: 'http://smalltalkhub.com/mc/PharoExtras/XMLParserHTML/main/' ].
			spec
				package: 'Snabb-Timeline';
				package: 'SnabbStudio' with: [ spec requires: #(XMLParserHTML) ].
			spec group: 'default' with: #('Snabb-Timeline' 'SnabbStudio') ]