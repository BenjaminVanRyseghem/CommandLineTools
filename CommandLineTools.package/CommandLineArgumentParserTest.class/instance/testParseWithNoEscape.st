tests-protocol
testParseWithNoEscape
	| args |
	
	args := CLParser new
		string: '-t foo -o foo/bar mitzva';
		parse.
		
	self assert: args size equals: 5.
	
	self assert: args first isKeyword.
	self assert: args second isParameter.
	self assert: args third isKeyword.
	self assert: args fourth isParameter.
	self assert: args fifth isParameter.