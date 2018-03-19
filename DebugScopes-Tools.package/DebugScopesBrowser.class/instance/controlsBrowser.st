controls - building
controlsBrowser
	| browser |
	browser := GLMTabulator new.
	browser column: #classes.
	browser column: #methods.
	browser column: #args.
	browser transmit
		to: #classes;
		andShow: [ :a | 
			a fastList
				title: 'Classes';
				display: [ :input | input ];
				enableFilter ].
	browser transmit
		from: #classes;
		to: #methods;
		when: [ :class | class notNil ];
		andShow: [ :a :class | 			
			a fastList
				title: 'Methods';
				display: class allSelectors asArray;
				enableFilter ].
	^ browser openOn: ((Smalltalk allClassesAndTraits reject: [ :a | a isAnonymous ]) sort: [ :a :b | a asString < b asString ]) asArray