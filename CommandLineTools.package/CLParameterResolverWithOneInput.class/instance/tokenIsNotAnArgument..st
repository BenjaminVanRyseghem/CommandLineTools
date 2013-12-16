private
tokenIsNotAnArgument: anArgument

	self input
		ifNil: [ self input: anArgument ]
		ifNotNil: [ super tokenIsNotAnArgument: anArgument ]