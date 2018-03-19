activation
ensureSingleProcessAdaptationSafety
	"Suspends the monitored process and ensure that all its operations are terminated and that it is in a waiting state."

	| found context |
	adaptedProcess ifNil: [ ^ self ].
	adaptedProcess suspend.
	found := false.
	context := adaptedProcess suspendedContext.
	[ context isNil or: [ found ] ]
		whileFalse: [ | adaptedSelectors |
			self flag: 'add an interface to get all selectors from the adaptation specs in the collectors'.
			adaptedSelectors := adaptation allSelectors.
			found := adaptedSelectors includes: context selector.
			found
				ifFalse: [ context := context sender ] ].
	found
		ifTrue: [ adaptedProcess complete: context ]