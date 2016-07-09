accessing - icons
snabbSmallIcon
	"Private - Generated method"
	^self icons 
			at: #snabbSmallIcon
			ifAbsentPut:[ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self snabbSmallIconContents readStream) ].