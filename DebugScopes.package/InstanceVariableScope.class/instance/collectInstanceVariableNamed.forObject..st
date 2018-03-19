collecting api
collectInstanceVariableNamed: instVarName forObject: anObject
	self
		collectInstanceVariableObject: (anObject class slotNamed: instVarName)
		forInstance: anObject