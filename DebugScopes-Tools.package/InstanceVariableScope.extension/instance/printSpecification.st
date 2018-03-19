*DebugScopes-Tools
printSpecification
	| node ws |
	node := self weakNodeReference ifNil: [ ^ 'ERROR PRINTING SCOPE SPECIFICATION: NODE IS NIL' ].
	ws := WriteStream on: String new.
	ws nextPutAll: node printString.
	ws nextPut: $..
	ws cr.
	ws nextPutAll: 'node'.
	ws nextPutAll: ' "CTRL+i to inspect"'.
	ws nextPut: $..
	ws cr.
	ws nextPutAll: '"Using methods, CTRL+i to inspect:"'.
	ws cr.
	node usingMethods
		do: [ :method | 
			ws nextPutAll: method compiledMethod printString.
			ws nextPut: $..
			ws cr ].
	^ ws contents