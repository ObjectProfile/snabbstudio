accessing - computed
centerIndex
	^ centerIndex ifNil: [ 1 max: self totalPoints // 2 ]