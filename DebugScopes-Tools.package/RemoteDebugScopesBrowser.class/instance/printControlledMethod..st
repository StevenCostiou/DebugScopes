printing
printControlledMethod: aMethod
	| textStream |
	textStream := WriteStream on: Text new.
	textStream nextPutAll: aMethod ast methodClass remotePrintString asText.
	textStream nextPutAll: '<the_Class> >> '.
	textStream nextPutAll: aMethod ast selectorAndArgumentNames asText.
	^ textStream contents