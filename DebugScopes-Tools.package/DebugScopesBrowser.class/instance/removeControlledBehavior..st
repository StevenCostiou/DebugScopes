behaviors - actions
removeControlledBehavior: aControlSpec
	controls remove: aControlSpec.
	(self selectedScope adaptationSpecForCollector: selectedCollector) removeControl: aControlSpec forBehavior: aControlSpec controllingSelector