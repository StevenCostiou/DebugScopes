private
selectedScope
	^ ((self presentations first paneNamed: #scopes) port: #selection) value