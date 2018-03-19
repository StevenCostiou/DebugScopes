collectors and activators - actions
removeActivationScope: aScope
	aScope ifNil: [ ^ self ].
	self selectedScope removeActivationScope: aScope