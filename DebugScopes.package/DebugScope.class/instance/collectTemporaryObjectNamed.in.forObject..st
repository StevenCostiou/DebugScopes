scoping - objects
collectTemporaryObjectNamed: aVarName in: aMethodName forObject: anObject
	| scope |
	scope := VariableScope new.
	self addObjectScope: scope.
	scope collectTemporaryObjectNamed: aVarName in: aMethodName forObject: anObject