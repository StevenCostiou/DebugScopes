tests
testEventScopingActivation
	| layer |
	layer := DebugScope new.
	layer activateOn: ActivationAnnouncement deactivateOn: DeactivationAnnouncement.
	self assert: layer isActive not.
	DebugScopeGlobalAnnouncer default announce: ActivationAnnouncement.
	self assert: layer isActive.
	DebugScopeGlobalAnnouncer default announce: DeactivationAnnouncement.
	self assert: layer isActive not.
	layer release