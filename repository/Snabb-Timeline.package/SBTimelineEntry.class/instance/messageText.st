accessing
messageText
	^ messageText
		ifNil: [ | msgs |
			msgs := OrderedCollection
				with: msg0
				with: msg1
				with: msg2
				with: msg3.
			messageText := self messageTemplate
				copyWithRegex: '\$\w+'
				matchesTranslatedUsing: [ :each | each allButFirst , '(' , msgs removeFirst asString , ')' ] ]