accessing
current
	^ debugger ifNil: [ debugger := self new setup ]