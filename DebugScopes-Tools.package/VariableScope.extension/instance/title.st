*DebugScopes-Tools
title
	| node class ws |
	node := self weakNodeReference ifNil: [ ^ 'ERROR NO NODE FOUND' ].
	class := node methodNode methodClass printString.
	ws := WriteStream on: String new.
	ws nextPutAll: 'Collects '.
	ws nextPutAll: self whatDoICollect.
	ws nextPutAll: ' in class: '.
	ws nextPutAll: class.
	^ ws contents