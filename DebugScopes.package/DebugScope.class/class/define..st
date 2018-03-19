instance creation
define: aScopeName
	| scope |
	scope := self new.
	scope scopeName: aScopeName.
	self scopes at: aScopeName put: scope.
	^ scope