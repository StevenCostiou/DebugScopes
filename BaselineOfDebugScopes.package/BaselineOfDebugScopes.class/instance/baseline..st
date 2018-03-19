baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec baseline: 'Lub' with: [ spec repository: 'github://StevenCostiou/Lub' ].
			spec blessing: #baseline.
			spec repository: 'github://StevenCostiou/DebugScopes'.
			spec description: 'Debug Scopes implementation'.
			spec package: 'DebugScopes'.
			spec package: 'DebugScopes-Tools'.
			spec package: 'DebugScopes-Tests'.
			spec package: 'DebugScopes-Lub' ]