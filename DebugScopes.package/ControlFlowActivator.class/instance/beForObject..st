scoping
beForObject: anObject
	super beForObject: anObject.
	links do: [ :l | l uninstall ].
	activationAst link: links first forObject: anObject.
	deactivationAst link: links last forObject: anObject