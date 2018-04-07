api
forObject
	collectAction := [ :value :context | 
	context receiver == self weakObject
		ifTrue: [ collector collectObject: value ] ].
	installAction := #installForObject.
	reifications add: #context.
	selector := #value:value:.
	self initializeLink