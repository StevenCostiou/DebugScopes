behaviors - building
behaviorForSelector: selector fromCollector: collector in: a
	| class source |
	class := (self selectedScope adaptationSpecForCollector: collector) definingClass.
	source := [ (class >> selector) sourceCode ]
		on: Error
		do: [ '"Define your method here"' ].
	a pharoMethod
		title: 'Method';
		smalltalkClass: [ class ];
		display: source;
		selectionAct: [ :thepane :theselector | 
			| src newSelector |
			src := (thepane pane port: #text) value.
			newSelector := (self selectedScope adaptationSpecForCollector: collector) compileSource: src.
			behaviors addIfNotPresent: newSelector.
			DebugScopeGlobalAnnouncer default announce: DefinedClassHasChanged.
			(thepane pane port: #selection) value: newSelector ]
			on: $s
			entitled: 'Accept'