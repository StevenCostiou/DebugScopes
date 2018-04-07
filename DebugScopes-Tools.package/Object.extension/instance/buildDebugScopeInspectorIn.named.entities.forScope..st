*DebugScopes-Tools
buildDebugScopeInspectorIn: a named: aName entities: entities forScope: scope
	a fastTable
		display: [ entities ];
		column: aName evaluated: [ :each | each printDefinition ] width: 350;
		column: 'Scoped to'
			evaluated: [ :each | 
			each weakObject isNil
				ifTrue: [ 'Not scoped' ]
				ifFalse: [ each weakObject == self
						ifTrue: [ 'self' ]
						ifFalse: [ each weakObject printString ] ] ];
		icon: [ :each | 
			each isActive
				ifTrue: [ GLMUIThemeExtraIcons glamorousGreenCircle ]
				ifFalse: [ GLMUIThemeExtraIcons glamorousRedCircle ] ];
		selectionAct: [ :each | 
			each selection beForObject: self.
			a update ]
			entitled: 'Scope to self';
		selectionAct: [ :each | each selection inspect ] entitled: 'Inspect';
		selectionAct: [ :each | each selection weakObject inspect ] entitled: 'Inspect scoped entity';
		send: #value