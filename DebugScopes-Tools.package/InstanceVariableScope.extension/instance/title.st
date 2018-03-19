*DebugScopes-Tools
title
	| node ws |
	node := self weakNodeReference ifNil: [ ^ 'ERROR NO NODE FOUND' ].
	ws := WriteStream on: String new.
	ws nextPutAll: 'Collects '.
	ws nextPutAll: self whatDoICollect.
	ws nextPutAll: ' named: '.
	ws nextPutAll: node definitionString.
	^ ws contents