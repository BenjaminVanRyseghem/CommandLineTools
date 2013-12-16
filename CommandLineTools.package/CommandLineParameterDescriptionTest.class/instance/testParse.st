test-initialization
testParse
	| result |
	
	result := CLParameterDescription parse: 'to'.
	self assert: result long equals: 'to'.
	self assert: result short equals: $t.
	self assert: result numberOfParameters equals: 1.
	
	result := CLParameterDescription parse: 'to[12]'.
	self assert: result long equals: 'to'.
	self assert: result short equals: $t.
	self assert: result numberOfParameters equals: 12.
	
	result := CLParameterDescription parse: 'to|d'.
	self assert: result long equals: 'to'.
	self assert: result short equals: $d.
	self assert: result numberOfParameters equals: 1.
	
	result := CLParameterDescription parse: 'to|d[27]'.
	self assert: result long equals: 'to'.
	self assert: result short equals: $d.
	self assert: result numberOfParameters equals: 27