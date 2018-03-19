tests
testControllingMethodsRenaming

	|  collector adaptSpec |
	scope collectAll: (Array with: Time now).

	"Specifying the adaptation"
	collector := scope collectors first.
	adaptSpec := scope adaptationSpecForCollector: collector.
	adaptSpec compileSource: (DebugScopeTest >> #with:with:with:) ast source.

	"Testing"
	self assert: (adaptSpec definingClass selectors includes: #debug_with:with:with:).
	self deny: (adaptSpec definingClass selectors includes: #with:with:with:).
	
	adaptSpec compileSource: 'debug_test'.
	self assert: (adaptSpec definingClass selectors includes: #debug_test).