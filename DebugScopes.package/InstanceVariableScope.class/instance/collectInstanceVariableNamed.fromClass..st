collecting api
collectInstanceVariableNamed: instVarName fromClass: aClass
	self collectInstanceVariableObject: (aClass slotNamed: instVarName)