adaptations - building
collectedObjectsIn: a
	| list |
	self updateObjectList.
	list := a fastTable.
	list title: 'Altered Behaviors for Collected Objects'.
	list display: objectList.
	list column: 'Altered Class' evaluated: [ :each | each key asString ] width: 250.
	list column: 'For Objects Collected by' evaluated: [ :each | each value asString ] width: 250