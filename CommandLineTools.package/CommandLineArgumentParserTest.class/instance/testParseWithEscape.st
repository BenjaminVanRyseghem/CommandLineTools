tests-protocol
testParseWithEscape
	| args |
	
	args := CLParser new
		escapingCharacter: $\; 
		string: '-t foo -o \foo/bar mitzva\';
		parse.
		
	self assert: args size equals: 4.
	self assert: args fourth contents first equals: $f