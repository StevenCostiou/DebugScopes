*DebugScopes-Tools
title
	| class ws |
	class := node methodNode methodClass printString.
	ws := WriteStream on: String new.
	ws nextPutAll: self whatDoICollect.
	ws nextPutAll: ' ('.
	ws nextPutAll: class.
	ws nextPutAll: ')'.
	^ ws contents