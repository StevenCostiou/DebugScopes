activation
unadaptCollectedObjectsIn: aCollector
	| adaptation |
	adaptation := self adaptationForCollector: aCollector.
	aCollector collectedObjects do: [ :object | adaptation unadaptObject: object ]