*DebugScopes-Tools
printActivationValue
	activationAst = deactivationAst
		ifTrue: [ ^ '<' , activationAst printForScopeControl , '>' ].
	^ 'from <' , activationAst printForScopeControl , '> to <' , deactivationAst printForScopeControl , '>'