accessing - icons
snabbIcon
	"Private - Generated method"
	^self icons 
			at: #snabbIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self snabbIconContents readStream) ].