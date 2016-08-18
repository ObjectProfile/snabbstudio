hooks
showLog
	(view attributeAt: #SBSelectRangeContextInteraction)
		select: (SBTimeline new entries: self context)