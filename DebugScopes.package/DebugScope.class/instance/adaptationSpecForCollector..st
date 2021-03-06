adaptations
adaptationSpecForCollector: aCollector
	| spec |
	spec := adaptationsForCollectors at: aCollector ifAbsentPut: AdaptationSpec new.
	spec
		superClassPool: (aCollector collectedClasses flatCollect: [ :c | c withAllSuperclasses ]).
	^ spec