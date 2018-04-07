deprecated
scopeToValue: aValue inTempNamed: varName inMethodNamed: methodName forObject: anObject
	| methodAst |
	methodAst := (anObject class lookupSelector: methodName) ast.
	activationValue := aValue.
	self weakObject: anObject.
	link := MetaLink new.
	link control: #after.
	link
		metaObject: [ :value :context | 
			context receiver == self weakObject
				ifTrue: [ self activate: value = activationValue ] ].
	link selector: #value:value:.
	link arguments: #(#newValue #context).
	(methodAst assignmentNodes select: [ :node | node variable name = varName ]) do: [ :node | node link: link ]