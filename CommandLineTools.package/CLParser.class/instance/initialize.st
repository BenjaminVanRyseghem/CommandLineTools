initialize
initialize

	super initialize.

	escapingCharacter := self defaultEscapingCharacter.
	isEscaping := false.
	temp := ReadWriteStream on: ''.
	tokens := OrderedCollection new.