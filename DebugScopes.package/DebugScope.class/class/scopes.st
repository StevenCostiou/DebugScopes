accessing
scopes
	remoteScopesProxy ifNotNil:[^remoteScopesProxy].
	^ scopes ifNil: [ scopes := Dictionary new ]