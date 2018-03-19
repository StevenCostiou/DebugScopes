generation
generateHooksForObject: anObject
	| generatedHooks |
	generatedHooks := OrderedCollection new.
	adaptationSpec selectors
		do: [ :selector | 
			| controls |
			controls := adaptationSpec controlsFor: selector.
			controls
				do: [ :controlSpec | 
					| hook |
					hook := LUBHook
						hook: controlSpec controlledMethod
						with: controlSpec controllingMethod
						control: controlSpec control.
					hook args: controlSpec argsArray.
					generatedHooks add: hook ] ].
	^ generatedHooks