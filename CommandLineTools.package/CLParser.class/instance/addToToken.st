private
addToToken
	| stringToAdd token |
	
	stringToAdd := temp contents.
	stringToAdd isEmpty ifTrue: [ ^ self ].
	
	token := (stringToAdd first = $- and: [true])
		ifTrue: [ CLKeyWordToken contents: stringToAdd ]
		ifFalse: [ CLParameterToken contents: stringToAdd ].
	
	tokens add: token.
	self releaseTemp.