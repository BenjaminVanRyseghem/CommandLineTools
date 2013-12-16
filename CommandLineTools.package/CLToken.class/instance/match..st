protocol
match: aDescription 
	| second |
	
	second := contents second.

	^ second = $-
		ifTrue: [ self matchLong: aDescription ]
		ifFalse: [ self matchShort: aDescription ]