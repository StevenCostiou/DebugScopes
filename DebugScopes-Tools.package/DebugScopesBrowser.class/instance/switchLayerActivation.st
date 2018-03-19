scopes - actions
switchLayerActivation
	self selectedScope ifNotNil: [ :layer | layer switchActivation ].
	self update