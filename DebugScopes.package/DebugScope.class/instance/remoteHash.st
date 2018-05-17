comparing
remoteHash
	^ self hash
		bitXor: (collectors hash bitXor: (activators hash bitXor: adaptationsForCollectors hash))