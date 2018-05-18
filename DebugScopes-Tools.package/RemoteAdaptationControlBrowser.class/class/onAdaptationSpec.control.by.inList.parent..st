instance-creation
onAdaptationSpec: spec control: control by: selector inList: controls parent: parentBrowser
	| browser |
	browser := self new.
	browser title: 'Configure adaptation control'.
	browser control: control.
	browser controllingSelector: selector.
	browser adaptationSpec: spec.
	browser controllingMethodFromSelector: selector.
	browser controlsList: controls.
	browser parentBrowser: parentBrowser.
	browser openOn: (Array with: (RemoteDebugger current remoteObject: [ Smalltalk at: #Object ]))