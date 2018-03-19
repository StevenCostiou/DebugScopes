instance-creation
onAdaptationSpec: spec control: control by: selector inList: controls
	| browser |
	browser := self new.
	browser title: 'Configure adaptation control'.
	browser control: control.
	browser controllingSelector: selector.
	browser adaptationSpec: spec.
	browser controllingMethodFromSelector: selector.
	browser controlsList: controls.
	browser openOn: (Array with: Object)