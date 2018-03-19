scoping
scopeToCondition: aBlock afterNode: aNode
	link := MetaLink new.
	link control: #after.
	link metaObject: (self buildActivationConditionFor: aBlock).
	link selector: #value:.
	link arguments: aBlock argumentNames.
	link options: #(argsAsArray).
	aNode link: link