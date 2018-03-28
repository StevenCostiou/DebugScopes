removing
removeScopeNamed: scopeName
	| scope |
	scope := self scopes at: scopeName ifAbsent: [ ^ self ].
	scope release.
	self scopes removeKey: scopeName