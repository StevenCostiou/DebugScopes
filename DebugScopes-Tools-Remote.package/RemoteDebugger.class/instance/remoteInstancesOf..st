accessing
remoteInstancesOf: aClassName
	^ remotePharo evaluate: [ (Smalltalk at: aClassName) allInstances ]