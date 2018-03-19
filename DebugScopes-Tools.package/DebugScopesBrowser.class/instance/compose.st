building
compose
	self tabulator
		with: [ :browser | 
			browser
				row: [ :r | 
					r
						column: #scopes;
						column: #browser span: 6 ]
				span: 5.
			browser row: #evaluator.
			browser transmit
				to: #scopes;
				andShow: [ :a | self scopesListIn: a ].
			browser transmit
				from: #scopes;
				to: #evaluator;
				andShow: [ :a | 
					a pharoScript
						display: 'scope';
						title: 'Scope evaluator';
						variableBindings: [ {(#scope -> self selectedScope)} ] ].
			browser transmit
				to: #browser;
				fromOutsidePort: #entity;
				from: #scopes;
				andShow: [ :a | self selectScopeIn: a ] ]