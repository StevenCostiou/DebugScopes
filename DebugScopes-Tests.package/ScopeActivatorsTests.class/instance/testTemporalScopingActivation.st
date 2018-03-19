tests
testTemporalScopingActivation
	| layer |
	layer := DebugScope new.
	layer activateEach: 10 for: 10 loop: true.
	5 milliSecond wait.
	self assert: layer isActive.
	10 milliSecond wait.
	self assert: layer isActive not.
	10 milliSecond wait.
	self assert: layer isActive.
	10 milliSecond wait.
	self assert: layer isActive not.
	layer release