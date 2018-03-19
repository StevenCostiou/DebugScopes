observing
methodWithTempVar
	| temp |
	temp := OrderedCollection new.
	1 to: 10 do: [ :i | temp add: i ].
	registeredValue := temp