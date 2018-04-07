*DebugScopes-Tools
gtInspectorCollectorIn: composite
	<gtInspectorPresentationOrder: 30>
	| tab |
	tab := composite tabulator.
	tab title: 'Debug Scopes'.
	tab column: #scopes span: 1.
	tab
		column: [ :c | 
			c
				row: #activators;
				row: #collectors ]
		span: 4.
	tab transmit
		to: #scopes;
		andShow: [ :a | 
			a table
				display: [ DebugScope scopes ];
				column: 'Scopes' evaluated: [ :each | each printString ] ].
	tab transmit
		from: #scopes;
		to: #activators;
		andShow: [ :a :scope | 
			self
				buildDebugScopeInspectorIn: a
				named: 'Activators'
				entities: (scope activators select: [ :activator | activator canBeScopedToObject ])
				forScope: scope ].
	tab transmit
		from: #scopes;
		to: #collectors;
		andShow: [ :a :scope | 
			self
				buildDebugScopeInspectorIn: a
				named: 'Collectors'
				entities: scope collectors
				forScope: scope ].
	^ tab