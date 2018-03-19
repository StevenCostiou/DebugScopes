scoping - objects
collectReceiverObject: node
	| scope |
	scope := VariableScope new.
	self addObjectScope: scope.
	scope collectReceiverObject: node