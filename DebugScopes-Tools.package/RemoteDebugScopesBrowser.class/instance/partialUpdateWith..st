updating
partialUpdateWith: remoteScopes
	| scope |
	self updateScopesWith: remoteScopes.
	
	scope := self selectedScope ifNil: [ ^ self ].
	
	scope activators size = activators size
		ifFalse: [ activators removeAll.
			activators
				addAll: (self selectedScope ifNil: [ OrderedCollection new ] ifNotNil: [ :s | s activators ]).
			DebugScopeGlobalAnnouncer default announce: ObjectActivatorHasChanged ].
		
	scope collectors size = collectors size
		ifFalse: [ collectors removeAll.
			collectors
				addAll: (self selectedScope ifNil: [ OrderedCollection new ] ifNotNil: [ :s | s collectors ]).
			DebugScopeGlobalAnnouncer default announce: ObjectCollectorHasChanged ].
		
	updateControlForSelector
		ifNotNil: [ self updateControlsListForSelector: updateControlForSelector.
			updateControlForSelector := nil.
			DebugScopeGlobalAnnouncer default announce: ControlledBehaviorsHasChanged ]