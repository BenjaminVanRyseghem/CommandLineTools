tests-protocol
testResolveRequiresMoreParameterThatProvidedAndTokensIsEmpty
	
	resolver descriptions: {to . output}.
	resolver argumentsToResolve: (self parseInput: '-t').
	
	self should: [ resolver resolve ] raise: CLErrorNotEnoughParameter