scoping - objects
collectAll: objects
	| scope |
	scope := ObjectScope new.
	self addObjectScope: scope.
	scope collectAll: objects