instance creation
define: aLayerName adaptFrom: aClass with: anAdaptationSpec
	| layer adaptation |
	layer := self define: aLayerName.
	adaptation := LUBAdaptation
		named: aLayerName
		adapt: anAdaptationSpec
		with: aClass
		states: Array new.
	layer adaptation: adaptation.
	^ layer