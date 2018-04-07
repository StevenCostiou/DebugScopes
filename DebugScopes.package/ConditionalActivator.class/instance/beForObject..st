scoping
beForObject: anObject
	| node |
	super beForObject: anObject.
	node := link nodes asArray first.
	link uninstall.
	node link: link forObject: anObject