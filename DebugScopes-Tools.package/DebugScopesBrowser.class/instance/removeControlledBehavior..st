behaviors - actions
removeControlledBehavior: aControlSpec
	| spec |
	controls remove: aControlSpec.
	spec := self selectedScope adaptationSpecForCollector: selectedCollector.
	spec removeControl: aControlSpec forBehavior: aControlSpec controllingSelector.
	spec mustRecompile: true