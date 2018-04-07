deprecated
scopeToValue: aValue inInstVarNamed: slotName forObject: anObject
	| node |
	activationValue := aValue.
	self weakObject: anObject.
	link := MetaLink new.
	link control: #after.
	link
		metaObject: [ :value :context | 
			context receiver == self weakObject
				ifTrue: [ self activate: value = activationValue ] ].
	link selector: #value:value:.
	link arguments: #(#value #context).
	node := anObject class slotNamed: slotName.
	((node usingMethods collect: [ :compiledMethod | compiledMethod ast assignmentNodes ]) flattened
		select: [ :each | each variable name = slotName ]) do: [ :aNode | aNode link: link ].
	(anObject readSlot: node) = aValue
		ifTrue: [ self activate: true ]