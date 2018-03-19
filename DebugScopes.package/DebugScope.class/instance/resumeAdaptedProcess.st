activation
resumeAdaptedProcess
	"Suspends the monitored process and ensure that all its operations are terminated and that it is in a waiting state."

	adaptedProcess ifNil: [ ^ self ].
	adaptedProcess resume