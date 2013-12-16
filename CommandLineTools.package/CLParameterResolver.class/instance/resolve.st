protocol
resolve
	
	[ copy isEmpty ] 
		whileFalse: [ self resolve: copy removeFirst ].
		
	^ output