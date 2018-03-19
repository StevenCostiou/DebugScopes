*DebugScopes-Tools
reificationKeysForNode: aNode
	| nodeClass |
	nodeClass := aNode class.
	^ (self allSubclasses
		select: [ :c | (c entities includes: RBProgramNode) or: [ c entities includes: nodeClass ] ])
		collect: [ :c | c key ]