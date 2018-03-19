scoping - objects
collectInstanceVariableNamed: instVarName forObject: anObject
	| scope |
	scope := InstanceVariableScope new.
	self addObjectScope: scope.
	scope collectInstanceVariableNamed: instVarName forObject: anObject