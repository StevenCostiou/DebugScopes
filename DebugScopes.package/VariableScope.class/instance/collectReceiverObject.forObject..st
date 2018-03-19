installing
collectReceiverObject: node forObject: anObject
	scopeType := self receiverScopeType.
	self weakObject: anObject.
	self installMetaLinkOn: node reifying: #(receiver context)