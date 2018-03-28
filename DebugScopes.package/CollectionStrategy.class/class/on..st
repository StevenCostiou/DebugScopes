instance creation
on: aCollector
	| strategy |
	strategy := self basicNew.
	strategy collector: aCollector.
	strategy initialize.
	^ strategy