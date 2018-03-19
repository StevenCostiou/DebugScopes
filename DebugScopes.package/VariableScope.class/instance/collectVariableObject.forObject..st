installing
collectVariableObject: node forObject: anObject
	scopeType := self tempVarScopeType.
	self weakObject: anObject.
	self installMetaLinkOn: node reifying: #(newValue context)