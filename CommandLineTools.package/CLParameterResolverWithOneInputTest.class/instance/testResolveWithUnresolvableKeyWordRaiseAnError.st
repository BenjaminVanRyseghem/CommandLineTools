tests-protocol
testResolveWithUnresolvableKeyWordRaiseAnError

	resolver descriptions: { output }.
	resolver argumentsToResolve: (self parseInput: '-t a b').
	
	self should: [ resolver resolve ] raise: CLErrorNoMatchingArgument.