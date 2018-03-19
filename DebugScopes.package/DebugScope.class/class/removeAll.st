removing
removeAll
	self scopes do: [ :l | l release ].
	scopes := Dictionary new