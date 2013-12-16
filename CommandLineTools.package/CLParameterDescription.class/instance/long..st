accessing
long: aString

	long := aString.
	short ifNil: [ short := aString first ]