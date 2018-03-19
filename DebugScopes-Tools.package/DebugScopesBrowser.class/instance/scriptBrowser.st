script - building
scriptBrowser
	| browser |
	browser := GLMTabulator new.
	browser row: #script.
	browser transmit
		to: #script;
		andShow: [ :a | self scriptIn: a ].
	^ browser