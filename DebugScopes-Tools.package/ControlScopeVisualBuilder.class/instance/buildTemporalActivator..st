visiting
buildTemporalActivator: activator
	| ws |
	ws := WriteStream on: String new.
	ws nextPutAll: 'Activates '.
	ws nextPutAll: 'each '.
	ws nextPutAll: (Duration milliSeconds: activator each) humanReadablePrintString.
	ws nextPutAll: ' for '.
	ws nextPutAll: (Duration milliSeconds: activator for) humanReadablePrintString.
	^ composite pharoMethod display: ws contents