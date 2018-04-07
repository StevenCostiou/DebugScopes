highlighting
highlightCollectorNode: node
	self color: (Color green alpha: 0.1).
	self borderStyle: (self theme rubScrolledTextMorphThemer highlightBorderStyleFor: textArea).
	self borderColor: Color green muchDarker.
	self borderWidth: 2.
	