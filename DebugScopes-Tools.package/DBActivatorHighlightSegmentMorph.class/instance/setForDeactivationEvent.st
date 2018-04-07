highlighting
setForDeactivationEvent
	self color: (Color red alpha: 0.1).
	self borderStyle: (self theme rubScrolledTextMorphThemer highlightBorderStyleFor: textArea).
	self borderColor: Color red darker.
	self borderWidth: 0