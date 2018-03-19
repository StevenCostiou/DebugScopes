updating
updateControlsListForSelector: selector
	controls := ((self selectedScope adaptationSpecForCollector: selectedCollector) controlsFor: selector)
		asOrderedCollection