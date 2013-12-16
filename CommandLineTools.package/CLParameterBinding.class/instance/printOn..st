printing
printOn: aStream

	aStream << ' ('.
	description printOn: aStream.
	aStream << ' => '.
	arguments do: [:e | e printOn: aStream. aStream space ].
	aStream << ')'