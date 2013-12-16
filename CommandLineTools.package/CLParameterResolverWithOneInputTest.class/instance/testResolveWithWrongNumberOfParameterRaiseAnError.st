tests-protocol
testResolveWithWrongNumberOfParameterRaiseAnError
	
	resolver descriptions: { to . output }.
	resolver argumentsToResolve: (self parseInput: '-t a b c').
	
	self should: [ resolver resolve ] raise: CLErrorTokenIsNotAnArgument.