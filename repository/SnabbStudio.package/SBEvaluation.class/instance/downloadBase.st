downloading
downloadBase
	self storage ensureCreateDirectory.
	self download: self evalUrl to: self evalPage.
	self download: self benchCsvUrl to: self benchCsvFile