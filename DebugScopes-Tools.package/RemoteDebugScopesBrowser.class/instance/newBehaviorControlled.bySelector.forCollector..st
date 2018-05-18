instance creation
newBehaviorControlled: control bySelector: selector forCollector: collector
	| spec |
	spec := self selectedScope adaptationSpecForCollector: collector.
	RemoteAdaptationControlBrowser
		onAdaptationSpec: spec
		control: control
		by: selector
		inList: controls
		parent: self