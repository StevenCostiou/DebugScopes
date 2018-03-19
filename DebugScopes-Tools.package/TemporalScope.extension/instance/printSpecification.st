*DebugScopes-Tools
printSpecification
	| ws |
	ws := WriteStream on: String new.
	ws nextPutAll: 'Activate'.
	ws crtab.
	ws nextPutAll: 'each: '.
	ws
		nextPutAll: each printString;
		nextPutAll: ' milliseconds'.
	ws crtab.
	ws nextPutAll: 'for: '.
	ws
		nextPutAll: for printString;
		nextPutAll: ' milliseconds'.
	ws crtab.
	ws nextPutAll: 'loop: '.
	ws nextPutAll: loop printString.
	^ ws contents