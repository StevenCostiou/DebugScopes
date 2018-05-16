visiting
buildReceiverCollector: strategy
	| pharoMethod node |
	pharoMethod := composite pharoMethod.
	node := strategy node.
	pharoMethod
		title: strategy title;
		smalltalkClass: [ node methodNode methodClass ];
		variableBindings: [ {(#node -> node)} ];
		display: strategy printNode.
	pharoMethod addTextSegment: (self inspectSegmentForReceiver: strategy).
	pharoMethod addTextSegment: (DBActivatorHighlightSegmentMorph forCollectorNode: node)