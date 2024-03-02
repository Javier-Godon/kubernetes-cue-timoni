//An incomplete value is one which does not have all fields filled with data.
// Cue will not export incomplete values and instead return an error.
//By contrast, concrete is a fully specified value.

// incomplete values
//a: _
//b: int
//
//s: {
//	a: _
//}

//Execute: cue export incomplete.cue --out yaml

a: "a"
s: a: {foo: "bar"}

//Execute: cue export incomplete.cue --out yaml
