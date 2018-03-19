removing
removeLayerNamed: layerName
	| layer |
	layer := self scopes at: layerName ifAbsent: [ ^ self ].
	layer release.
	self scopes removeKey: layerName