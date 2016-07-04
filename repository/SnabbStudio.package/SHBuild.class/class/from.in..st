instance creation
from: aDictionary in: anEvaluation
	^ self new
		benchmark: (aDictionary at: #benchmark);
		id: (aDictionary at: #id);
		score: (aDictionary at: #score);
		unit: (aDictionary at: #unit);
		evaluation: anEvaluation;
		yourself