tests-protocol
testResolveBindsCorrectly
	|  result |
	
	resolver descriptions: { to . output }.
	resolver argumentsToResolve:(self parseInput: '-t a --output b').	
	result := resolver resolve.
	
	self assert: result bindings size equals: 2.
	
	self assert: result bindings first description equals: to.
	self assert: result bindings second description equals: output.
	
	self assert: result bindings first arguments size equals: 1.
	self assert: result bindings first arguments first contents equals: 'a'.
	
	self assert: result bindings second arguments size equals: 1.
	self assert: result bindings second arguments first contents equals: 'b'.