collectors and activators - actions
removeObjectScope: aScope
	aScope ifNil: [ ^ self ].
	self selectedScope removeObjectScope: aScope