dependencies
release
	super release.
	process ifNotNil: [ process terminate ]