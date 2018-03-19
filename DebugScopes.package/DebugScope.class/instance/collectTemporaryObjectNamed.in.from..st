scoping - objects
collectTemporaryObjectNamed: aVarName in: aMethodName from: aClass
	| scope |
	scope := VariableScope new.
	self addObjectScope: scope.
	scope collectTemporaryObjectNamed: aVarName in: aMethodName from: aClass