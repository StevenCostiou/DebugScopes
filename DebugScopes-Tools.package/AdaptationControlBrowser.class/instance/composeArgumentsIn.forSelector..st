building
composeArgumentsIn: view forSelector: selector
	| args methodArgs availableArgs |
	args := self controlSpec controllingMethod ast arguments.
	methodArgs := self controlSpec controlledMethod ast arguments.
	args isEmpty
		ifTrue: [ ^ self ].
	availableArgs := OrderedCollection withAll: (methodArgs collect: [ :argNode | argNode ]).
	availableArgs addAll: RFReification reificationKeysForMethods.
	argsBrowser := view tabulator.
	argsBrowser
		with: [ :browser | 
			browser row: #def span: 1.
			browser transmit
				to: #def;
				andShow: [ :a | 
					a morph
						title: 'Control';
						display: [ self methodDescriptionMorph ] ].
			1 to: args size do: [ :i | 
				| arg |
				arg := self arg: i.
				browser row: arg span: 1.
				browser transmit
					from: arg;
					to: #def;
					transformation: [ :e | 
						self controlSpec argAt: i put: e.
						e ].
				browser transmit
					to: arg;
					andShow: [ :a | 
						| dropDown |
						dropDown := a dropDownList.
						dropDown title: (args at: i) name asString.
						dropDown display: availableArgs.
						i <= methodArgs size
							ifTrue: [ dropDown selectedIndex: i ] ] ] ]