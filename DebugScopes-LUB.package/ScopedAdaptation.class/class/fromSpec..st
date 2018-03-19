instance creation
fromSpec: anAdaptationSpec
	| adaptation |
	adaptation := self new.
	adaptation adaptationSpec: anAdaptationSpec.
	adaptation referenceClass: anAdaptationSpec definingClass.
	adaptation states: #().
	adaptation objectAdapter: (LUBMetalinkAdapter on: adaptation).
	^ adaptation