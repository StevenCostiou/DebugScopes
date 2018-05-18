accessing
controlSpec
	^ controlSpec ifNil: [ controlSpec := RemoteDebugger current remoteObject: [ AdaptationControlSpec new ] ]