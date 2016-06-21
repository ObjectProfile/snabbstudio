accessing - computed
context
	^ data
		copyFrom: (1 max: self centerIndex - (self contextSize // 2))
		to: (self totalPoints min: self centerIndex + (self contextSize // 2))