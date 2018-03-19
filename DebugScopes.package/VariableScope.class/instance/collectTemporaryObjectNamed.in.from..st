collecting api
collectTemporaryObjectNamed: aVarName in: aMethodName from: aClass

	| method nodes |
	method := (aClass lookupSelector: aMethodName) ifNil: [ ^ self ].
	nodes := method ast assignmentNodes select: [ :node | node variable name = aVarName ].
	nodes ifEmpty: [ ^ self ].
	self collectVariableObject: nodes first variable