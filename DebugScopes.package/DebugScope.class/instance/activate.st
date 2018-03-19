activation
activate
	"If the layer is not scoped, it can be manually activated, 
	otherwise it just triggers an activation check on all scopes.
	If all scopes are active then the layer activates "

	activationScopes ifEmpty: [ ^ self basicActivate ].
	self notifyScopeActivation