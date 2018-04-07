*DebugScopes-Tools
buildInComposite: composite
	| ws |
	ws := WriteStream on: String new.
	ws nextPutAll: 'Activates '.
	ws nextPutAll: 'each '.
	ws nextPutAll: (Duration milliSeconds: each) humanReadablePrintString.
	ws nextPutAll: ' for '.
	ws nextPutAll: (Duration milliSeconds: for) humanReadablePrintString.
	^ composite pharoMethod display: ws contents