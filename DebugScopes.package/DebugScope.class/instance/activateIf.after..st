scoping - activation
activateIf: aConditionString after: aNode
	| conditionBlock |
	conditionBlock := [ Smalltalk compiler evaluate: aConditionString ]
		on: Error
		do: [ nil ].
	conditionBlock isBlock
		ifFalse: [ ^ self ].
	self addActivator: (ConditionalActivator scopeToCondition: conditionBlock afterNode: aNode)