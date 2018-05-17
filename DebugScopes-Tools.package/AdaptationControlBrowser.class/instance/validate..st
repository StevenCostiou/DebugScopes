actions
validate: browser
	adaptationSpec addControlledBehavior: self controlSpec forBehavior: self controlSpec controllingSelector.
	controlsList add: self controlSpec.
	
	browser updateControlForSelector: adaptationSpec controllingSelector.
	DebugScopeGlobalAnnouncer default announce: ControlledBehaviorsHasChanged.
	
	browser close