actions
validate: browser
	adaptationSpec addControlledBehavior: self controlSpec forBehavior: self controlSpec controllingSelector.
	controlsList add: self controlSpec.
	
	parentBrowser updateControlForSelector: self controlSpec controllingSelector.
	DebugScopeGlobalAnnouncer default announce: ControlledBehaviorsHasChanged.
	
	browser close