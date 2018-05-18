instance creation
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder
		item: #'Remote Debug Scopes';
		iconName: #workspace) action: [ self open ]