scopes - building
selectScopeIn: composer
	composer dynamic
		title: 'Scoping';
		display: [ :layers :selectedLayer | self browseScopesForLayer: selectedLayer ].
	composer dynamic
		title: 'Behaviors Specification';
		display: [ :layers :selectedLayer | self browseBehaviorsForScope: selectedLayer ].
		composer dynamic
		title: 'Behaviors Visualization';
		display: [ :layers :selectedLayer | self browseAdaptationsForLayer: selectedLayer ].
	composer dynamic
		title: 'Activation Script';
		display: [ :layers :selectedLayer | self browseScriptForScope: selectedLayer ].
	