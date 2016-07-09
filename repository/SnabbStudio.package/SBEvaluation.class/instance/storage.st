accessing - files
storage
	^ storage ifNil: [ storage := self defaultStorage ]