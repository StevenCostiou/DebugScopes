menu - scopes
buildSubMenuOn: aBuilder
	| context |
	context := SugsAbstractContext contextFor: aBuilder model.
	(remote ifNil: [ DebugScope scopes ] ifNotNil: [ RemoteDebugger current scopes ])
		do: [ :scope | 
			aBuilder
				item: scope;
				with: [ self buildGeneralMenuForScope: scope in: context on: aBuilder ] ]