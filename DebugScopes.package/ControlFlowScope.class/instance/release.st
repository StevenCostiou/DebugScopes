scoping
release
	super release.
	activationAst := nil.
	deactivationAst := nil.
	links do: [ :l | l uninstall ]