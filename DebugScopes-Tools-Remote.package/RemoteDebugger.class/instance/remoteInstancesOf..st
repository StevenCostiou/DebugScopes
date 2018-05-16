as yet unclassified
remoteInstancesOf: aClassName
	^ remotePharo evaluate: [ (Smalltalk at: aClassName) allInstances ]