menu - scopes
buildGeneralMenuForScope: scope in: context on: aBuilder
	context selectedInterval size > 1
		ifFalse: [ ^ #() ].
	self buildControlFlowMenuForLayer: scope in: context on: aBuilder.
	self buildCollectInstanceVariableForScope: scope in: context on: aBuilder.
	self buildCollectReceiverForScope: scope in: context on: aBuilder.
	self buildCollectTemporaryForScope: scope in: context on: aBuilder