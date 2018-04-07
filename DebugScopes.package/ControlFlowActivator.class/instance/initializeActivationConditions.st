initialization
initializeActivationConditions
	| ml |
	self isValidControlFlow
		ifFalse: [ isActive := false.
			^ self ].
	super initializeActivationConditions.
	(activationAst children includes: deactivationAst)
		ifTrue: [ deactivationAst := activationAst ].
	links := OrderedCollection new.

	"Activation condition"
	ml := MetaLink new.
	ml metaObject: [ self activate: true ].
	ml selector: #value.
	ml control: #before.
	activationAst link: ml.
	links add: ml.

	"Deactivation condition"
	ml := MetaLink new.
	ml metaObject: [ self activate: false ].
	ml selector: #value.
	ml control: #after.
	deactivationAst link: ml.
	links add: ml.

	"Declare the scope initialized"
	initialized := true