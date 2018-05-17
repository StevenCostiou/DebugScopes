stepping
step
	| remoteScopes |
	remoteScopes := DebugScope remoteScopes values.
	self partialUpdateWith: remoteScopes