building
buildActivationConditionFor: block
	^ [ :args | self activate: (block valueWithArguments: args) ]