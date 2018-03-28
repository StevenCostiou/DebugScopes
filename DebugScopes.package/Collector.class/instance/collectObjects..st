collecting objects
collectObjects: objects
	objects do: [ :o | self collectObject: o ]