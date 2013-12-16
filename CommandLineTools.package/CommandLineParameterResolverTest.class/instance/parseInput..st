tests-protocol
parseInput: input
	^ CLParser new
		string: input;
		parse