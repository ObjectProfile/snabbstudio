downloading
unpack: aFile
	"Apparently Pharo doesn't have support for tar/LZMA? I don't know (yet) how to do this on OSX"

	[ :bar | 
	bar title: 'Unpacking ' , aFile basename.
	self
		system:
			('(cd ''{1}''; tar xvf ''{2}'')'
				format:
					{aFile parent pathString.
					aFile pathString}).
	bar progress: 1.0
	"OSSUnixSubprocess new
		workingDirectory: aFile parent pathString;
		command: 'tar';
		arguments: (Array with: 'xvf' with: aFile pathString);
		redirectStdin;
		runAndWaitOnExitDo: [ :process :stdout | bar progress: 1.0 ]" ] asJob run