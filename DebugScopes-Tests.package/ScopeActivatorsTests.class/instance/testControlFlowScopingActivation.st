tests
testControlFlowScopingActivation
	| layer testObject startNode stopNode |
	layer := DebugScope new.
	testObject := DebugScopeMonitor new.
	testObject scope: layer.
	startNode := (DebugScopeMonitor >> #methodWithCflowScope) ast body statements first.
	stopNode := (DebugScopeMonitor >> #methodWithCflowScope) ast body statements third.
	layer activateBetween: startNode and: stopNode.
	testObject methodWithCflowScope.
	self assert: testObject layerWasActive.
	self assert: testObject layerDeactivated.
	layer release