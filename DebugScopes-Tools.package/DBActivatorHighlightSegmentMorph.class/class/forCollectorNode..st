as yet unclassified
forCollectorNode: node
	| highlighter |
	highlighter := self from: node start to: node stop + 1.
	highlighter highlightCollectorNode: node.
	^ highlighter