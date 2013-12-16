test-initialization
testParseDescriptions
	| result |
	
	result := CLParameterDescription parseDescriptions: 'to|d[27] output'.
	self assert: result first long equals: 'to'.
	self assert: result first short equals: $d.
	self assert: result first numberOfParameters equals: 27.
	
	self assert: result second long equals: 'output'.
	self assert: result second short equals: $o.
	self assert: result second numberOfParameters equals: 1.