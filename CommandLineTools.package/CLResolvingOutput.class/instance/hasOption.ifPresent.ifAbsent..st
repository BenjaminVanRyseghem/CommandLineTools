protocol-queries
hasOption: anArgument ifPresent: aBlock ifAbsent: anotherBlock
	
	^ self bindings 
		detect: [ :e | e description match: '--', anArgument ]
		ifFound: aBlock 
		ifNone: anotherBlock