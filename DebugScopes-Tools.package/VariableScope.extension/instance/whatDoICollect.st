*DebugScopes-Tools
whatDoICollect
	self type = self tempVarScopeType
		ifTrue: [ ^ 'temporary' ].
	self type = self receiverScopeType
		ifTrue: [ ^ 'receiver' ].
	self type = self instVarScopeType
		ifTrue: [ ^ 'instance variable' ].
	^ super whatDoICollect