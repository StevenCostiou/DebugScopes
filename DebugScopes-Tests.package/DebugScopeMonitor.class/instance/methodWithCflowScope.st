testing
methodWithCflowScope
	| startNode stopNode |
	startNode := 0.
	layerWasActive := layer isActive.
	stopNode := 0.
	layerDeactivated := layer isActive not