collecting api
collectInstanceVariableNamed: instVarName forObject: anObject
	strategy := InstVarCollectionStrategy on: self forObject: anObject.
	strategy varName: instVarName.
	strategy varClass: anObject class.
	strategy install