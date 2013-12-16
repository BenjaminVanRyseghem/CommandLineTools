test-initialization
testDefaultNumberOfParameters
	| description |
	
	description := CLParameterDescription new.
			
	self assert: description numberOfParameters equals: 1