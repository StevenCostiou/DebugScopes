api
compileSource: source
	| sourceCode |
	sourceCode := (source asString findString: 'debug_') = 1
		ifTrue: [ source ]
		ifFalse: [ 'debug_' , source asString].
	^ definingClass compile: sourceCode