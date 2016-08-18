accessing
buildId
	| xml rows row |
	xml := XMLHTMLParser parseFileNamed: self evaluation evalPage pathString.
	rows := xml xPath: '//*[@id="tabs-now-succeed"]/table/tbody/tr'.
	rows ifEmpty: [ rows := xml xPath: '//*[@id="tabs-still-succeed"]/table/tbody/tr' ].
	rows ifEmpty: [ ^ self notFoundError ].
	row := rows detect: [ :each | each stringValue includesSubstring: self buildName ].
	^ row elements second stringValue