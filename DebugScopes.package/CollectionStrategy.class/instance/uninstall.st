api
uninstall
	link ifNil: [ ^ self ].
	link uninstall.
	link := nil