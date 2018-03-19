tests
testUnicityOfCollectedObject
	| scope time |
	scope := ObjectScope new.
	time := Time now.
	10 timesRepeat: (scope collectAll: (Array with: time)).
	self assert: scope collectedObjects size equals: 1.
	self assert: scope collectedObjects first == time.
	scope release