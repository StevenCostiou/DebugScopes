building
compose

	self tabulator
		with: [ :browser | 
			browser
				row: [ :r | 
					r column: #method.
					r column: #script.
					 ]
				span: 8.
			browser
				row: [ :r | 
					r column: #ok span: 1.
					r column: #blank span: 2.
					r column: #cancel span: 1 ]
				span: 1.
				
			browser transmit
				to: #method;
				andShow: [ :a | 					
					a pharoMethod
						title: 'Original Source';
						smalltalkClass: [ node methodNode methodClass ];
						display: node methodNode sourceCode ].
					
			browser transmit			
				to: #script;			
				andShow: [ :a :class | 					
					a pharoScript
						title: 'Condition';
						display: activationCondition].


			browser transmit
				to: #ok;
				andShow: [ :composite | 
					composite morph
						morph: [ :morphPresentation | 
							| button |
							button := SimpleButtonMorph new.
							button color: (Color r: (13/255) g: (71/255) b: (161/255) alpha: 1.0).
							button
								on: #mouseUp send: #value to: [
									|script|
									script :=
									((browser paneNamed: #script) port: #text) value.
									scope activateIf: script after: node.
									browser close ];
								label: 'OK';
								yourself ]].
						
				browser transmit
				to: #cancel;
				andShow: [ :composite | 
					composite morph
						morph: [ :morphPresentation | 
							| button |
							button := SimpleButtonMorph new.
							button color: (Color r: (183/255) g: (28/255) b: (28/255) alpha: 1.0).
							button
								on: #mouseUp send: #value to: [browser close];
								label: 'CANCEL';
								yourself ] ]]