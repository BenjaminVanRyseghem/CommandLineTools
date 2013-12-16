private
resolve: anArgument
	| binding description |
	
	(self ensureIsKeyword: anArgument)
		ifFalse: [ ^ self tokenIsNotAnArgument: anArgument ].
	
	description := self descriptions 
		detect: [ :each | each match: anArgument ]
		ifNone: [ ^ self argumentNotFound: anArgument ].
	
	binding := CLParameterBinding new
		description: description;
		yourself.
	binding arguments: (self popArgumentsFor: description).
	
	output addBinding: binding