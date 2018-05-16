testing
aMethodWithTempVar
	| var |
	var := 0.
	self printString.
	1 to: 10 do: [ :i | var := i ]