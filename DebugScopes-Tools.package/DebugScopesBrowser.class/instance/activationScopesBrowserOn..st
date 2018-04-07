collectors and activators - building
activationScopesBrowserOn: browser
	activators := self selectedScope activators.
	browser transmit
		to: #adaptationScopes;
		andShow: [ :a | 
			a title: 'Activators'.
			a act: [ :presentation | presentation selection inspect ] entitled: 'Inspect selection'.
			a act: [ :presentation | self removeActivationScope: presentation selection ] entitled: 'Remove selection'.
			a fastTable
				display: activators;
				updateOn: ObjectActivatorHasChanged from: [ DebugScopeGlobalAnnouncer default weak ];
				selectionAct: [ :presentation | self renameScopingProperty: presentation selection ] entitled: 'Rename...';
				column: 'Activator' evaluated: [ :each | each printActivationValue ] width: 250;
				column: 'Type' evaluated: [ :each | each title ];
				icon: [ :each | 
					each isActive
						ifTrue: [ GLMUIThemeExtraIcons glamorousGreenCircle ]
						ifFalse: [ GLMUIThemeExtraIcons glamorousRedCircle ] ] ].
	browser transmit
		from: #adaptationScopes;
		to: #activationDefinition;
		andShow: [ :a :scope | self buildObjectScopeDefinitionFor: scope in: a ]