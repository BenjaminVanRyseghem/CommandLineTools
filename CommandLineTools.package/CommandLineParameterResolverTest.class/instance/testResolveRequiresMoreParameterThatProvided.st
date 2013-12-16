tests-protocol
testResolveRequiresMoreParameterThatProvided
	
	resolver descriptions: {to . output}.
	resolver argumentsToResolve: (self parseInput: '-t --output b').
	
	self should: [ resolver resolve ] raise: CLErrorParameterExpected