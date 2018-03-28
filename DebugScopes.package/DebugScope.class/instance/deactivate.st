activation
deactivate
	"If the layer is not scoped, it can be manually deactivated, 
	otherwise it just triggers an activation check on all scopes.
	If all scopes are inactive then the layer deactivates "

	activators ifEmpty: [ ^ self basicDeactivate ].
	self notifyScopeActivation