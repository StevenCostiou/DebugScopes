*DebugScopes-Tools
adaptedSourceCode
	originalMethod ifNil: [ ^ replacementMethod ast formattedCode ].
	^ self buildAdaptedAst