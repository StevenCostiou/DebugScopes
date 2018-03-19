*DebugScopes-Tools
printSpecification
	| node |
	node := self weakNodeReference ifNil: [ ^ 'ERROR PRINTING SCOPE SPECIFICATION: NODE IS NIL' ].
	^ node source