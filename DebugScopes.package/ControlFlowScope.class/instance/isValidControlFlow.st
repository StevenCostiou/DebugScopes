testing
isValidControlFlow
	^ ((Array with: activationAst with: deactivationAst) includes: nil) not