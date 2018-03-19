scopes - actions
newDebugScope
	| name scope |
	name := UIManager default request: 'Layer name' initialAnswer: '' title: 'Define new Dynamic Layer'.
	(#(nil '') includes: name)
		ifTrue: [ UIManager default inform: 'A layer name cannot be empty'.
			^ self ].
	scope := DebugScope define: name.
	scopes addIfNotPresent: scope.
	DebugScopeGlobalAnnouncer default
		announce:
			(DebugScopeHasChanged new
				scope: scope;
				yourself).
	((presentations first paneNamed: #scopes) port: #selection) value: scope