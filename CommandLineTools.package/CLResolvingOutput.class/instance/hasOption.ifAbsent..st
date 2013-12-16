protocol-queries
hasOption: anArgument ifAbsent: anotherBlock
	
	^ self 
		hasOption: anArgument 
		ifPresent: [ ] 
		ifAbsent: anotherBlock