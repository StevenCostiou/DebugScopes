*DebugScopes-Tools
printSpecification
	| ws source |
	ws := WriteStream on: String new.
	source := activationAst source.
	ws
		nextPutAll: activationAst methodNode methodClass name;
		nextPutAll: '>> '.
	ws nextPutAll: (source copyFrom: 1 to: activationAst start - 1).
	ws crtab.
	ws nextPutAll: '"ACTIVATION"'.
	ws crtab.
	ws
		nextPutAll:
			(activationAst source
				copyFrom: activationAst start
				to: deactivationAst stop).
	ws crtab.
	ws nextPutAll: '"DEACTIVATION"'.
	ws crtab.
	ws
		nextPutAll: (source copyFrom: deactivationAst stop + 1 to: source size).
	^ ws contents