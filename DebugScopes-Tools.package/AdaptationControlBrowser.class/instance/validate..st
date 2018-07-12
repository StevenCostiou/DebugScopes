actions
validate: browser
	adaptationSpec addControlledBehavior: self controlSpec forBehavior: self controlSpec controllingSelector.
	adaptationSpec mustRecompile: true.
	controlsList add: self controlSpec.
	
	parentBrowser updateControlForSelector: self controlSpec controllingSelector.
	DebugScopeGlobalAnnouncer default announce: ControlledBehaviorsHasChanged.
	
	browser close