instance creation
from: ast to: anOtherAst
	^ self new
		activationAst: ast;
		deactivationAst: anOtherAst;
		yourself