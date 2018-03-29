*DebugScopes-Tools
title
	| ws |
	ws := WriteStream on: String new.
	ws nextPutAll: self whatDoICollect.
	ws nextPutAll: ' ('.
	ws nextPutAll: varClass printString.
	ws nextPutAll: ')'.
	^ ws contents