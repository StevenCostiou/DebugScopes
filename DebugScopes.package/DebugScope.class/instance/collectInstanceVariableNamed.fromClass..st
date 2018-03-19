scoping - objects
collectInstanceVariableNamed: instVarName fromClass: aClass
	| scope |
	scope := InstanceVariableScope new.
	self addObjectScope: scope.
	scope collectInstanceVariableNamed: instVarName fromClass: aClass