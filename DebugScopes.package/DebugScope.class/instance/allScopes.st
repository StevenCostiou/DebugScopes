accessing
allScopes
	^ OrderedCollection new
		addAll: self activators;
		addAll: self collectors;
		yourself