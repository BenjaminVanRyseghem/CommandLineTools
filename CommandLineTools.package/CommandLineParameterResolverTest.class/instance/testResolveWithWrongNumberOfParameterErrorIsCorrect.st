tests-protocol
testResolveWithWrongNumberOfParameterErrorIsCorrect
	
	resolver descriptions: { to . output }.
	resolver argumentsToResolve: (self parseInput: '-t a b').
	
	[ resolver resolve ]
		on: CLErrorTokenIsNotAnArgument
		do: [ :ex | self assert: ex token contents equals: 'b' ]