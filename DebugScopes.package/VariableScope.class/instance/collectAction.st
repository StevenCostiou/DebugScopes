installing - options
collectAction
	self weakObject ifNotNil: [ ^ self collectActionForObject ].
	^ [ :value | self collectObject: value ]