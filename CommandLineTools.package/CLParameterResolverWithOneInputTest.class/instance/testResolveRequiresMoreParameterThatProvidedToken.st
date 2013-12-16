tests-protocol
testResolveRequiresMoreParameterThatProvidedToken
	
	resolver descriptions: {to . output}.
	resolver argumentsToResolve: (self parseInput: '-t --output b').
	
	[ resolver resolve ] 
		on: CLErrorParameterExpected
		do: [ :ex | self assert: ex token contents equals: '--output' ]