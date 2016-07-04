downloading
unpack: aFile
	"Apparently Pharo doesn't have support for tar/LZMA? I don't know (yet) how to do this on OSX"

	[ :bar | 
	bar title: 'Unpacking ' , aFile basename.
	OSSUnixSubprocess new
		workingDirectory: aFile parent pathString;
		command: 'tar';
		arguments: (Array with: 'xvf' with: aFile pathString);
		redirectStdin;
		runAndWaitOnExitDo: [ :process :stdout | bar progress: 1.0 ] ] asJob run