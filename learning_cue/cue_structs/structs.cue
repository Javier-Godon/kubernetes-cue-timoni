//Struct is the most important composite type in CUE. Its members are called fields.
//A struct field may be optional.
//One can use an optional field to indicate what the type should be if it were specified.
//A regular (or required) field, on the other hand, must be made concrete for a configuration
//to be converted to, say, JSON.
#a: {
	foo?: int
	bar?: string
	baz?: string
}

b: #a & {
	foo:  3
	baz?: 2
}

//Execute: cue eval -c structs.cue
