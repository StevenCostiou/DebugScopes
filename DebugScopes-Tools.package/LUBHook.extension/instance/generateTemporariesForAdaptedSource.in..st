*DebugScopes-Tools
generateTemporariesForAdaptedSource: ast in: adaptedAst
	adaptedAst temporaries: (adaptedAst temporaries asOrderedCollection addAll: ast temporaries copy) asSet.
	self isControlAfter
		ifFalse: [ ^ self ].
	adaptedAst temporaries add: (RBTemporaryNode named: 'returnValue')