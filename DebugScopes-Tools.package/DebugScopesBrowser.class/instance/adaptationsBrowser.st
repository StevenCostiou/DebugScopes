adaptations - building
adaptationsBrowser
	| browser |	
	browser := GLMTabulator new.
	browser
		row: [ :r | 
			r
				column: #objects;
				column: #methods ].
	browser row: #diff.
	browser transmit
		to: #objects;
		andShow: [ :a | self collectedObjectsIn: a ].
	browser transmit
		from: #objects;
		to: #methods;
		when: [ :object | object notNil ];
		andShow: [ :a :object | self methodsForAdaptedObject: object in: a ].
	browser transmit
		from: #methods;
		to: #diff;
		andShow: [ :a :method | 
			a diff
				display: [ :hook | 
					{hook originalSourceCode.
					hook adaptedSourceCode} ];
				contextClass: [ :hook | (hook originalMethod ifNil: [ hook replacementMethod ]) methodClass ];
				title: 'Original code / Adapted code' ].
	^ browser