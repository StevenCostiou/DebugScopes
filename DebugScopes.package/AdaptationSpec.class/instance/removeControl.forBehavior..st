api
removeControl: aControl forBehavior: aSelector
	|controlled|
	controlled := controlMap at: aSelector ifAbsent:[^self].
	controlled remove: aControl ifAbsent:[]