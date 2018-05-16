instance creation
open
	<script>
	| stream |
	stream := WriteStream on: String new.
	stream nextPutAll: 'Remote Debug Scopes'.
	stream space.
	RemoteDebugger current printAddressOn: stream.
	self new
		title: stream contents;
		openOn: #()