installing
collectInstanceVariableObject: node forInstance: anObject
	scopeType := self instVarScopeType.
	self weakObject: anObject.
	self installMetaLinkOn: node reifying: #(value context)