accessing - urls
stateUrl
	| xml rows row |
	xml := XMLHTMLParser parseFileNamed: self evaluation evalPage pathString.
	rows := xml xPath: '//*[@id="tabs-now-succeed"]/table/tbody/tr'.
	row := rows detect: [ :each | each stringValue includesSubstring: self buildName ].
	^ (self evaluation buildUrlFor: row elements second stringValue)
		, '/download/1/state.tar.xz'