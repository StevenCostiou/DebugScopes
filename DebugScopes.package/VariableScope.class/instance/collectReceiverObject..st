installing
collectReceiverObject: node
	scopeType := self receiverScopeType.
	self installMetaLinkOn: node reifying: #(receiver)