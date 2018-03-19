private
currentText: aText
	((self presentations first paneNamed: #evaluator) port: #text) value: aText