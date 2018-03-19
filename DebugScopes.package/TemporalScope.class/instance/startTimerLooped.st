private
startTimerLooped
	(scope isNil or: [ process notNil ])
		ifTrue: [ ^ self ].
	process := [ | activation |
	activation := true.
	[ true ]
		whileTrue: [ self activate: activation.
			(Delay forMilliseconds: for) wait.
			activation := activation not ] ] fork