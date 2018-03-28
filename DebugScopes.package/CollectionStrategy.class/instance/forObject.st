api
forObject
	collectAction := [ :value :context | 
	context receiver == self weakObject
		ifTrue: [ collector collectObject: value ] ].
	reifications add: #context.
	selector := #value:value:.
	self initializeLink