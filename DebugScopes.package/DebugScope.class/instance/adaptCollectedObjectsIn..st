activation
adaptCollectedObjectsIn: aCollector
	| adaptation |
	adaptation := self adaptationForCollector: aCollector.
	aCollector collectedObjects do: [ :object | adaptation adaptObject: object ]