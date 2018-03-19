api
addControlledBehavior: aControlSpec forBehavior: aSelector
	| controlled |
	controlled := controlMap at: aSelector ifAbsentPut: Set new.
	controlled add: aControlSpec.
	^ aControlSpec