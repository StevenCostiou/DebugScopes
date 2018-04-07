scoping
activate: bool
	(bool and: [ isActive ])
		ifTrue: [ ^ self ].
	scope ifNil: [ ^ self ].
	isActive := bool.
	scope notifyScopeActivation