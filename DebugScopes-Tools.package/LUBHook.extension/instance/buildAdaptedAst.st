*DebugScopes-Tools
buildAdaptedAst
	| ast sequence method |
	(self isControlAcquire or: [ self isControlInstead ])
		ifTrue: [ ^ replacementMethod ast formattedCode ].
	sequence := RBSequenceNode new.
	sequence statements: OrderedCollection new.
	ast := originalMethod ast.
	method := RBMethodNode selector: ast selector body: sequence.
	method arguments: ast arguments.
	self generateTemporariesForAdaptedSource: ast in: sequence.
	self isControlBefore
		ifTrue: [ sequence statements add: self generateCallAst ].
	sequence statements addAll: ast statements.
	self isControlAfter
		ifFalse: [ ^ method formattedCode ].
	^ self sourceBodyFrom: method