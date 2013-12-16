resolve
resolveString: aString with: descriptions

	^ self new
		descriptions: (CLParameterDescription parseDescriptions: descriptions);
		argumentsToResolve: (CLParser new
			string: aString;
			parse);
		resolve