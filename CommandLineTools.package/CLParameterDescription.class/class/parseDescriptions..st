instance creation
parseDescriptions: aString
	| defs |
	
	defs := aString splitOn: Character space.
	^ defs collect: [ :string | self parse: string ]