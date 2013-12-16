protocol
parse
	
	tokens := OrderedCollection new.
	string do: [ :c | self parseCharacter: c ].
	self addToToken.
	
	^ tokens