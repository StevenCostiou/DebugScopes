building
compose
	argsBrowser := nil.
	self tabulator 
		with: [ :browser | 
			browser
				row: [ :r | 
					r column: #classes.
					r column: #methods.
					r column: #args ]
				span: 8.
			browser
				row: [ :r | 
					r column: #blank1 span: 2.
					r column: #button span: 1.
					r column: #blank1 span: 2 ]
				span: 1.
			browser transmit
				to: #classes;
				andShow: [ :a | 
					argsBrowser := nil.
					"	a fastList
						title: 'Classes';
						display: [ :input | input ];
						enableFilter"
					a fastTree
						title: 'Available Classes';
						children: [ :class | (class subclasses select: [ :c | adaptationSpec superClassPool includes: c ]) sort: [ :b :c | b asString < c asString ] ];
						allExpanded ].
			browser transmit
				from: #classes;
				to: #methods;
				when: [ :class | class notNil ];
				andShow: [ :a :class | 
					argsBrowser := nil.
					self controlSpec controlledMethodClass: class.
					a fastList
						title: 'Methods';
						display: class selectors asSortedCollection;
						enableFilter ].
			browser transmit
				from: #methods;
				to: #args;
				andShow: [ :a :selector | 
					[ self controlSpec controlledMethod: self controlSpec controlledMethodClass >> selector.
					self composeArgumentsIn: a forSelector: selector ]
						on: Error
						do: [ :err |  ] ].
			browser transmit
				to: #button;
				andShow: [ :composite | 
					composite morph
						morph: [ :morphPresentation | 
							| button |
							button := SimpleButtonMorph new.
							button
								color:
									(Color
										r: 13 / 255
										g: 71 / 255
										b: 161 / 255
										alpha: 1.0).
							button
								on: #mouseUp send: #value to: [ self validate: browser ];
								label: 'OK';
								yourself ] ] ]