printing
printOn: aStream

	aStream << long.
	aStream << '|'.
	aStream << short.
	aStream << '['.
	numberOfParameters printOn: aStream.
	aStream << ']'