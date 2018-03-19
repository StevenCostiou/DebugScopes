private
currentText
	^ ((self presentations first paneNamed: #evaluator) port: #text) value