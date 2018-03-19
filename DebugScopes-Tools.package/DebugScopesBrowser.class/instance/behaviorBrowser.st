behaviors - building
behaviorBrowser
	| browser |
	browser := GLMTabulator new.
	
	browser
		row: [ :r | 
			r
				column: #collectors;
				column: #behaviors ].
	browser
		row: [ :r | 
			r
				column: #sourceCode;
				column: #configuration ].
			
	browser transmit
		to: #collectors;
		andShow: [ :a | self collectorsIn: a ].
		
	browser transmit
		from: #collectors;
		to: #behaviors;
		when: [ :collector | collector notNil ];
		andShow: [ :a :collector | 
			selectedCollector := collector.
			self updateBehaviorList.
			self behaviorsForCollector: collector in: a ].
		
	browser transmit
		from: #sourceCode;
		to: #behaviors port: #selection;
		transformed: [ :x | x ].
		
	browser transmit
		from: #collectors;
		to: #sourceCode;
		andShow: [ :a :collector | self behaviorForSelector: nil fromCollector: collector in: a ].
		
	browser transmit 
		from: #behaviors;
		to: #configuration;
		andShow:[:a :selector | self controlsForSelector: selector in: a].
		
	browser transmit
		from: #behaviors;
		to: #sourceCode;
		andShow: [ :a :selector | self behaviorForSelector: selector fromCollector: selectedCollector in: a ].
		
	^ browser