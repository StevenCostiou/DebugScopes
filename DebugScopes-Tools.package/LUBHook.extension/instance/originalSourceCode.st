*DebugScopes-Tools
originalSourceCode
	originalMethod ifNil: [ ^ '' ].
	^ originalMethod ast formattedCode