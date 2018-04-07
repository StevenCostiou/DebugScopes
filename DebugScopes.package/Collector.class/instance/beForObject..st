collecting - control
beForObject: anObject
	strategy uninstall.
	strategy weakObject: anObject.
	strategy forObject.
	strategy initializeLink.
	strategy install