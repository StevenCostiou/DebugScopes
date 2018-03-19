scoping - activation
activateIf: aConditionString after: aNode
	| conditionBlock |
	conditionBlock := [ Smalltalk compiler evaluate: aConditionString ]
		on: Error
		do: [ nil ].
	conditionBlock isBlock
		ifFalse: [ ^ self ].
	self addActivationScope: (ConditionalScope scopeToCondition: conditionBlock afterNode: aNode)