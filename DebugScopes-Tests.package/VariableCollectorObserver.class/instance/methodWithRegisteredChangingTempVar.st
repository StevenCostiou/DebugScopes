observing
methodWithRegisteredChangingTempVar
	| temp i |
	i := 1.
	registeredValue := OrderedCollection new.
	1 to: 10 do: [ :j | 
		temp := OrderedCollection new
			addAll: (i to: i + j);
			yourself.
		registeredValue add: temp.
		i := i + 10 ]