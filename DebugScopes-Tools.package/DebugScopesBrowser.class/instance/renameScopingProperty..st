collectors and activators - actions
renameScopingProperty: activatorOrCollector
	| name |
	activatorOrCollector isNil
		ifTrue: [ ^ self ].
	name := UIManager default request: 'Rename...' initialAnswer: (activatorOrCollector scopeName ifNil: [ activatorOrCollector printString ]) title: 'Rename...'.
	activatorOrCollector scopeName: name