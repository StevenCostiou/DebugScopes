*DebugScopes-Tools
sourceBodyFrom: astBody
	| source originalSource returnNodes rs |
	source := WriteStream on: String new.
	originalSource := astBody formattedCode.
	rs := originalSource readStream.
	returnNodes := (astBody allChildren select: [ :c | c isReturn ]) asSortedCollection: [ :a :b | a start < b start ].
	source nextPutAll: (rs upTo: $^).
	returnNodes
		do: [ :return | 
			| temp wrappedReturn |
			temp := RBTemporaryNode named: 'returnValue'.
			wrappedReturn := RBAssignmentNode variable: temp value: return value.
			source nextPutAll: wrappedReturn formattedCode.
			source nextPut: $..
			source crtab.
			source nextPutAll: self generateCallAst formattedCode.
			source nextPut: $..
			source crtab.
			source nextPutAll: '^returnValue'.
			rs next: return stop - return start + 1.
			source nextPutAll: (rs upTo: $^) ].
	astBody statements last isReturn
		ifFalse: [ source crtab.
			source nextPutAll: self generateCallAst formattedCode.
			source nextPut: $. ].
	^ source contents