hooks
showLog
	(view attributeAt: #SBSelectRangeContextInteraction)
		select: (SnabbTimeline new records: self context)