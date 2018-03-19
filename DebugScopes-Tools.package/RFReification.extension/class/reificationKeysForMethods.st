*DebugScopes-Tools
reificationKeysForMethods
	^ (self allSubclasses
		select: [ :c | (c entities includes: RBProgramNode) or: [ c entities includes: RBMethodNode ] ])
		collect: [ :c | c key ]