scoping - collectors
collectAll: objects
	| scope |
	scope := Collector new.
	self addCollector: scope.
	scope collectAll: objects