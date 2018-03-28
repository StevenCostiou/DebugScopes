collecting api
collectInstanceVariableNamed: instVarName fromClass: aClass
	strategy := InstVarCollectionStrategy on: self.
	strategy varName: instVarName.
	strategy varClass: aClass.
	strategy install