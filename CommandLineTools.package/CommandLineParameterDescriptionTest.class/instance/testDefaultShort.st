test-initialization
testDefaultShort
	| description |
	
	description := CLParameterDescription new
		long: 'output';
		yourself.
			
	self assert: description short equals: $o