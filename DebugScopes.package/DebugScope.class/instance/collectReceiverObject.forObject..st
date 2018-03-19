scoping - objects
collectReceiverObject: node forObject: anObject
	| scope |
	scope := VariableScope new.
	self addObjectScope: scope.
	scope collectReceiverObject: node forObject: anObject