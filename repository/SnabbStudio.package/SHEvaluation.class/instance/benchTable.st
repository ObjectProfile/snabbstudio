accessing
benchTable
	^ RTTabTable new
		input: self benchCsvFile contents usingDelimiter: $,;
		removeFirstRow;
		convertColumnsAsInteger: #(id);
		convertColumnsAsFloat: #(score);
		yourself