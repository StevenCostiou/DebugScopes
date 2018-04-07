*DebugScopes-Tools
generateCallAst
	| message selfNode arguments |
	selfNode := RBSelfNode named: 'self'.
	message := RBMessageNode receiver: selfNode selector: replacementMethod ast selector.
	arguments := args
		collect: [ :arg | 
			(arg isKindOf: RBArgumentNode)
				ifTrue: [ arg ]
				ifFalse: [ RBLiteralValueNode value: arg ] ].
	message arguments: arguments asArray.
	^ message