instance creation
parse: aString
	| result short number numberEnd |
	
	short := aString indexOf: $|.
	number := aString indexOf: $[.
	numberEnd := aString indexOf: $] startingAt: number.	
		
	result := self new.
	
	short > 0 
		ifTrue: [ result long: (aString copyFrom: 1 to: short-1) ]
		ifFalse: [ number > 0
			ifTrue: [ result long: (aString copyFrom: 1 to: number-1) ]
			ifFalse: [ result long: aString ] ].
		
	short > 0 ifTrue: [ result short: (aString copyFrom: short+1 to: short+1) first ].
	
	(number > 0 and: [ numberEnd > number ])
		ifTrue: [ result numberOfParameters: ((aString copyFrom: (number+1 to: numberEnd -1)) asInteger) ].
		
	^ result