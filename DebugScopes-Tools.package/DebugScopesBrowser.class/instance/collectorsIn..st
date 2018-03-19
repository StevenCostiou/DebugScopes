behaviors - building
collectorsIn: a
	| list |
	list := a fastTable.
	list title: 'Object Collectors'.
	list display: collectors.
	list selectionAct: [ :tree | tree selection inspect ] on: $i entitled: 'Inspect'.
	list column: 'Collector' evaluated: [ :each | each asString ] width: 500.
	list updateOn: ObjectCollectorHasChanged from: [ DebugScopeGlobalAnnouncer default weak ]