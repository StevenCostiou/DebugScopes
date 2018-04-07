*DebugScopes-Tools
buildInComposite: composite
	| pharoMethod line1 line2 ws h1 h2|
	line1 := 'Activates when: ' , activationEvent printString.
	line2 := 'Deactivates when: ' , deactivationEvent printString.
	ws := WriteStream on: String new.
	ws nextPutAll: line1.
	ws cr.
	ws cr.
	ws nextPutAll: line2.
	pharoMethod := composite pharoMethod.
	pharoMethod display: ws contents.
	h1 := DBActivatorHighlightSegmentMorph from: 1 to: line1 size + 1.
	h1 setForActivationEvent.
	pharoMethod addTextSegment: h1.
	h2 := DBActivatorHighlightSegmentMorph from: line1 size + 3 to: ws contents size + 1.
	h2 setForDeactivationEvent.
	pharoMethod addTextSegment: h2.