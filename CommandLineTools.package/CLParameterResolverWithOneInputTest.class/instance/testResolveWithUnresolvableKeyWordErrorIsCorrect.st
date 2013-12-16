tests-protocol
testResolveWithUnresolvableKeyWordErrorIsCorrect

	resolver descriptions: { output }.
	resolver argumentsToResolve: (self parseInput: '-t a b').
	
	[ resolver resolve ]
		on: CLErrorNoMatchingArgument
		do: [ :ex | self assert: ex token contents equals: '-t' ]