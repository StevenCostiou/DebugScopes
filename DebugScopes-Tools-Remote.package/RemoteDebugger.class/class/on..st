accessing
on: tcpAddress
	^ debugger ifNil: [ debugger := self new setupOn: tcpAddress ]