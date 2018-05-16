scopes - building
scopesListIn: a
	| list |
	list := a list.
	list updateOn: DebugScopeHasChanged from:[DebugScopeGlobalAnnouncer default weak].
	list
		title: 'Scopes';
		display: scopes;
		sorted: [ :x :y | x scopeName < y scopeName ];
		format: [ :each | each scopeName ];
		icon: [ :layer | 
			layer isActive
				ifTrue: [ GLMUIThemeExtraIcons glamorousGreenCircle ]
				ifFalse: [ GLMUIThemeExtraIcons glamorousRedCircle ] ];
		act: [ :x | self switchLayerActivation ] icon: GLMUIThemeExtraIcons glamorousPlay entitled: 'Switch Activation';
		act: [ :x | self newDebugScope] icon: GLMUIThemeExtraIcons glamorousAdd entitled: 'New';
		act: [ :x | self inspectSelectedLayer ] icon: GLMUIThemeExtraIcons glamorousBrowse entitled: 'Inspect';
		act: [ :x | self removeSelectedScope ] icon: GLMUIThemeExtraIcons glamorousRemove entitled: 'Remove';
		act: [ :x | self update ] icon: GLMUIThemeExtraIcons glamorousRefresh entitled: 'Refresh'