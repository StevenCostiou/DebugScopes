behaviors - actions
newBehaviorControlled: control bySelector: selector forCollector: collector
	| spec |
	spec := self selectedScope adaptationSpecForCollector: collector.
	AdaptationControlBrowser
		onAdaptationSpec: spec
		control: control
		by: selector
		inList: controls