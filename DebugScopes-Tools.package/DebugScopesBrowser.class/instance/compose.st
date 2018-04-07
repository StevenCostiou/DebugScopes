building
compose
	self tabulator
		with: [ :browser | 
			browser
				row: [ :r | 
					r
						column: #scopes span: 1;
						column: #browser span: 8 ]
				.
			"browser row: #evaluator."
			browser transmit
				to: #scopes;
				andShow: [ :a | self scopesListIn: a ].
			"browser transmit
				from: #scopes;
				to: #evaluator;
				andShow: [ :a | 
					a pharoScript
						display: (self selectedScope ifNil:[''] ifNotNil:[:s|s scopeName]);
						title: 'Scope evaluator';
						variableBindings: [ {(self selectedScope scopeName asSymbol -> self selectedScope)} ] ]."
			browser transmit
				to: #browser;
				fromOutsidePort: #entity;
				from: #scopes;
				andShow: [ :a | self selectScopeIn: a ] ]