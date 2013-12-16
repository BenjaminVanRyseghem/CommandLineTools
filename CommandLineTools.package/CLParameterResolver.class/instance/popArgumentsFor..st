private
popArgumentsFor: aDescription 
	| number result |
	
	result := OrderedCollection new.
	number := aDescription numberOfParameters.
	
	1 to: number do: [ :idx || argument |
		copy isEmpty ifTrue: [ ^ CLErrorNotEnoughParameter signal ].
		argument := copy removeFirst.
		argument isParameter ifFalse: [ ^ CLErrorParameterExpected new
			token: argument;
			signal ].
		result add: argument ].
	
	^ result