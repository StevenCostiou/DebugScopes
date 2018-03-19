as yet unclassified
methodWithMultipleReturns
	Time now asSeconds < 1000
		ifTrue: [ ^ OrderedCollection new
				add: 1;
				add: 2;
				yourself ].
	10
		timesRepeat: [ Transcript
				show: 'Hello world';
				cr ].
	^ tag ifNil: [ tag := 0 ]