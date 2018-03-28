initialization
initializeLink
	link := MetaLink new.
	link control: self control.
	link metaObject: self collectAction.
	link selector: self selector.
	link arguments: self reifications