collecting api
collectValue: node
	strategy := ValueCollectionStrategy on: self.
	strategy node: node.
	strategy install