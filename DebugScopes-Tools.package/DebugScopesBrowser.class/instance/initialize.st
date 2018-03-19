initialize
initialize
	super initialize.
	scopes := SortedCollection sortBlock: [ :s1 :s2 | s1 scopeName < s2 scopeName ].
	scopes addAll: DebugScope scopes values.
	collectors := OrderedCollection new.
	controls := SortedCollection new.
	activators := OrderedCollection new