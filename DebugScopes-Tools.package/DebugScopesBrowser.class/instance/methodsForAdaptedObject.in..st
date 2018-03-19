adaptations - building
methodsForAdaptedObject: association in: a
	| list adaptation |
	list := a fastTable.
	list title: 'Adapted Methods'.
	adaptation := self selectedScope adaptationForCollector: association value.
	hooks := adaptation generateHooksForObject: association key new.
	list display: hooks.
	list icon: [ :hook | hook icon ].
	list column: 'Control' evaluated: [ :each | each control ] width: 100.
	list column: 'Selector' evaluated: [ :each | each replacementMethod selector ] width: 300