installing
installMetaLinkOn: aNode reifying: reifications
	link := MetaLink new.
	link control: self control.
	link metaObject: self collectAction.
	link selector: self selector.
	link arguments: reifications.
	self installLinkOnNode: aNode