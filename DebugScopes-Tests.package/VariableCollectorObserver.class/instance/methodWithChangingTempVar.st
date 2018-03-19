observing
methodWithChangingTempVar
	| temp i |
	i := 1.
	1 to: 10 do: [ :j | 
		temp := OrderedCollection new
			addAll: (i to: i + j);
			yourself.
		i := i + 10 ].
	registeredValue := temp