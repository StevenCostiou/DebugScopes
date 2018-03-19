script - building
scriptIn: a
	| bindings |
	bindings := {(#scope -> self selectedScope).
	(#collectors -> self selectedScope collectors).
	(#objects -> self selectedScope collectedObjects)}.
	scriptSource := self selectedScope activationScript.
	^ a pharoScript
		display: scriptSource;
		variableBindings: [ bindings ];
		updateOn: DebugScopeScriptHasChanged from: [ DebugScopeGlobalAnnouncer default weak ];
		selectionAct: [ :thepane :theselector | 
			| src |
			src := (thepane pane port: #text) value.
			self selectedScope activationScript changeSource: src withBindings: bindings.
			DebugScopeGlobalAnnouncer default announce: DebugScopeScriptHasChanged ]
			on: $s
			entitled: 'Accept'