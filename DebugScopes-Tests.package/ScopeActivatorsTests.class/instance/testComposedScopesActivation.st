tests
testComposedScopesActivation
	| layer scope1 scope2 |
	layer := DebugScope new.
	scope1 := ManualScope new.
	scope2 := ManualScope new.
	layer addActivationScope: scope1.
	scope1 activate: true.
	self assert: layer isActive.
	layer addActivationScope: scope2.
	self assert: layer isActive not.
	scope2 activate: true.
	self assert: layer isActive.
	scope2 activate: false.
	self assert: layer isActive not.
	layer removeActivationScope: scope2.
	self assert: layer isActive.
	layer removeActivationScope: scope1