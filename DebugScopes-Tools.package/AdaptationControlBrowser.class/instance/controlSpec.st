accessing
controlSpec
	^ controlSpec ifNil: [ controlSpec := AdaptationControlSpec new ]