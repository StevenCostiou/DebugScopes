connection
setup
	^ self setupOn: (TCPAddress ip: #[127 0 0 1] port: 40423)