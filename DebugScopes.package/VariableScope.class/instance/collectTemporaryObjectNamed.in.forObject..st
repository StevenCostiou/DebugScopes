collecting api
collectTemporaryObjectNamed: aVarName in: aMethodName forObject: anObject
	| method nodes |
	method := (anObject class lookupSelector: aMethodName) ifNil: [ ^ self ].
	nodes := method ast assignmentNodes select: [ :node | node variable name = aVarName ].
	nodes ifEmpty: [ ^ self ].
	self collectVariableObject: nodes first variable forObject: anObject