actions
showCflowScopeBounds: aContext for: cflowScope
	| start end textWidget |
	start := cflowScope activationAst.
	end := cflowScope deactivationAst.
	((Array with: start with: end) includes: nil)
		ifTrue: [ ^ self ].
	textWidget := (aContext selectedClass == start methodNode methodClass
		and: [ aContext selectedMethod == start methodNode method ])
		ifTrue: [ aContext model sourceTextWidget ]
		ifFalse: [ start methodNode method browse ui sourceTextWidget ].
	textWidget setTextAreaSelection: (start start to: end stop)