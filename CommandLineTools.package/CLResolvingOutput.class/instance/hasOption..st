protocol-queries
hasOption: anArgument

	^ self bindings anySatisfy: [ :e | e description match: '--', anArgument ]