private
parseCharacter: aCharacter
		
	isEscaping
		ifTrue: [ 
			aCharacter == escapingCharacter
				ifTrue: [ 
					self addToToken.
					isEscaping := false ]
				ifFalse: [ self addToTemp: aCharacter ] ]
		ifFalse: [ 
			aCharacter == escapingCharacter
				ifTrue: [ 
					self addToToken.
					isEscaping := true ]
				ifFalse: [
					aCharacter == Character space
						ifTrue: [ 
							self addToToken ]
						ifFalse: [ self addToTemp: aCharacter ] ] ]