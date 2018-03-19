actions
validate: browser
	adaptationSpec addControlledBehavior: self controlSpec forBehavior: self controlSpec controllingSelector.
	controlsList add: self controlSpec.
	DebugScopeGlobalAnnouncer default announce: ControlledBehaviorsHasChanged.
	browser close