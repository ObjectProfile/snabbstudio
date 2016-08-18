accessing - urls
benchCsvUrl
	| xml rows csvRow |
	xml := XMLHTMLParser parseFileNamed: self evalPage pathString.
	rows := xml xPath: '//*[@id="tabs-now-succeed"]/table/tbody/tr'.
	rows ifEmpty: [ rows := xml xPath: '//*[@id="tabs-still-succeed"]/table/tbody/tr' ].
	rows ifEmpty: [ ^ self notFoundError ].
	csvRow := rows detect: [ :each | each stringValue includesSubstring: 'benchmark-csv' ].
	^ (self buildUrlFor: csvRow elements second stringValue) , '/download/1/bench.csv'