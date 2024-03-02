//Constraints can be used to validate values of concrete instances.
//They can be applied to CUE data, or directly to YAML or JSON.
#Language : {
	tag: string
	name: =~"^\\p{Lu}" // Must start with an uppercase letter.
}
languages: [...#Language]

//Execute: cue vet schema.cue data.yaml