*DebugScopes-Tools
generateCallAst
	| message selfNode arguments |
	selfNode := RBSelfNode named: 'self'.
	arguments := args
		collect: [ :arg | 
			(arg isKindOf: RBArgumentNode)
				ifTrue: [ arg ]
				ifFalse: [ RBLiteralValueNode value: arg ] ].
	message := RBMessageNode receiver: selfNode selector: replacementMethod ast selector arguments: arguments asArray.
	^ message