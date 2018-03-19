installing
installLinkOnNode: aNode
	self weakNodeReference: aNode.
	((aNode usingMethods collect: [ :compiledMethod | compiledMethod ast assignmentNodes ])
		flattened select: [ :each | each variable name = aNode name ])
		do: [ :node | node link: link ]