accessing
changeSource: source withBindings: bindings
	self variableBindings: bindings.
	self sourceCode: source.
	self wrapInBlock