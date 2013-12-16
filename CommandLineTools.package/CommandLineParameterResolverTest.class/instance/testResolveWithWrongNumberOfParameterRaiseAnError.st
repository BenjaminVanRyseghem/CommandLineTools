tests-protocol
testResolveWithWrongNumberOfParameterRaiseAnError

	resolver descriptions: { to . output }.
	resolver argumentsToResolve: (self parseInput: '-t a b').
	
	self should: [ resolver resolve ] raise: CLErrorTokenIsNotAnArgument