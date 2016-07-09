reading
readFile: aFile
	^ self readStream: aFile asFileReference readStream binary