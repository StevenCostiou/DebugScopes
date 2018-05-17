initialization
initialize
	super initialize.
	scopes := SortedCollection sortBlock: [ :s1 :s2 | s1 scopeName < s2 scopeName ].
	scopes addAll: DebugScope remoteScopes values.
	shouldUpdate := false