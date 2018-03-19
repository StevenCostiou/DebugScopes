menu - scopes
buildSubMenuOn: aBuilder
	| context |
	context := SugsAbstractContext contextFor: aBuilder model.
	DebugScope scopes
		do: [ :scope | 
			aBuilder
				item: scope;
				with: [ self buildGeneralMenuForScope: scope in: context on: aBuilder ] ]