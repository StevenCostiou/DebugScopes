installing - options
collectActionForObject
	^ [ :value :context | 
	context receiver == self weakObject
		ifTrue: [ self collectObject: value ] ]