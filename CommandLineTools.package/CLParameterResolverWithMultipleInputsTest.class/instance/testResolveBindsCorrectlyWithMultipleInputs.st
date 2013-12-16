tests-protocol
testResolveBindsCorrectlyWithMultipleInputs
	| result |
	
	resolver descriptions: { to . output }.
	resolver argumentsToResolve: (self parseInput: '-t a b c').
	
	result := resolver resolve.
	
	self assert: result bindings size equals: 1.
	
	self assert: result bindings first description equals: to.
	
	self assert: result bindings first arguments size equals: 1.
	self assert: result bindings first arguments first contents equals: 'a'.
	
	self assert: result inputs size equals: 2.
	self assert: result inputs first contents equals: 'b'.
	self assert: result inputs second contents equals: 'c'.