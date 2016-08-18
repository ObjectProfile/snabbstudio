accessing
breaths
	^ (SBEntryGrouper new groupEntries: self entries) reject: #isInterBreath