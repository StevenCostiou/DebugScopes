scoping - activation
activateIf: aConditionString after: aNode
	| conditionBlock |
	conditionBlock := [ Smalltalk compiler evaluate: aConditionString ]
		on: Error
		do: [ nil ].
	conditionBlock isBlock
		ifFalse: [ ^ self ].
	self addActivator: (ConditionalScope scopeToCondition: conditionBlock afterNode: aNode)