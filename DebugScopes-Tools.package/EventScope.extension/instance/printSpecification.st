*DebugScopes-Tools
printSpecification
	| str |
	str := WriteStream on: String new.
	str nextPutAll: 'Activates on '.
	str nextPutAll: activationEvent printString.
	str cr.
	str nextPutAll: 'Deactivates on '.
	str nextPutAll: deactivationEvent printString.
	^ str contents