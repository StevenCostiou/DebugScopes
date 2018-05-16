scopes - actions
removeSelectedScope
	self selectedScope
		ifNotNil: [ :scope | 
			(self confirm: 'Remove ' , scope scopeName , ' ?')
				ifTrue: [ scopes remove: scope ifAbsent: [  ].
					RemoteDebugger current removeScope: scope scopeName.
					((presentations first paneNamed: #scopes) port: #selection) value: nil ].
			self update ]