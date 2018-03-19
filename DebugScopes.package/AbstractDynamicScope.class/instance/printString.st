printing
printString
	^ scopeName ifNil: [ 'a ' , self class printString ]