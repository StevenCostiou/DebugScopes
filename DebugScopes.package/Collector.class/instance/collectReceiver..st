collecting api
collectReceiver: node
	strategy := ReceiverCollectionStrategy on: self.
	strategy node: node.
	strategy install