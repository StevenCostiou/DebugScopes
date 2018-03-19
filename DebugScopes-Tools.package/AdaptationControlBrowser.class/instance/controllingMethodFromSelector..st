accessing
controllingMethodFromSelector: aSelector
	|method|
	method := adaptationSpec definingClass >> aSelector.
	self controlSpec controllingMethod: method