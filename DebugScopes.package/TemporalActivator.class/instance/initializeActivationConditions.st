initialization
initializeActivationConditions
	"each and loop do not work yet"

	super initializeActivationConditions.
	process
		ifNotNil: [ process terminate.
			process := nil ].
	self startTimer