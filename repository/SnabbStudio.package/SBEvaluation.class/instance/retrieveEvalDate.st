downloading
retrieveEvalDate
	| doc paragraph |
	doc := XMLHTMLParser parseFileNamed: self evalPage pathString.
	paragraph := (doc xPath: '/html/body/div[2]/p[1]/text()') first stringValue.
	^ ('performed on ([^.]*)\.' asRegex
		search: paragraph;
		subexpression: 2) asDateAndTime