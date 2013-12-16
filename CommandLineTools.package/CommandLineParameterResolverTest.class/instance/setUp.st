initialize
setUp
	"Setting up code for CommandLineParameterResolverTest"

	resolver := self resolverClass new.
	to := CLParameterDescription new
		long: 'to';
		yourself.
	output := CLParameterDescription new
		long: 'output';
		yourself