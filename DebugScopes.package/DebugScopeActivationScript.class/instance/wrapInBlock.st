evaluating
wrapInBlock
	| blockStream |
	variableBindings isEmpty
		ifTrue: [ ^ [  ] ].
	blockStream := WriteStream on: String new.
	blockStream nextPut: $[.
	blockStream space.
	self bindingsNames
		do: [ :tempName | 
			blockStream nextPut: $:.
			blockStream nextPutAll: tempName asString.
			blockStream space ].
	blockStream nextPut: $|.
	blockStream nextPutAll: self sourceCode.
	blockStream nextPut: $].
	block := Smalltalk compiler evaluate: blockStream contents