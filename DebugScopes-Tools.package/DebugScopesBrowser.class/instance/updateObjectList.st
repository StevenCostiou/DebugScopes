updating
updateObjectList
	objectList := OrderedCollection new.
	collectors do: [ :collector | collector collectedClasses do: [ :class | objectList add: class -> collector ] ]