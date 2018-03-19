scoping - objects
collectAllFrom: aClass
	self collectAllExistingInstancesFrom: aClass.
	self collectAllNewInstancesFrom: aClass