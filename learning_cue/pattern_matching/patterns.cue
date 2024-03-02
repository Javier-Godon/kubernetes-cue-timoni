//Pattern matching allows you to specify constraints for labels which match a pattern.
//You can apply a constraint to string labels and use an identifier to set fields if you like.
#schema: {
	name: string
	ans:  string
	num:  int | *42
}

// match elem fields and alias labels to Name,
// unify with schema, set name to Name by label
elems: [Name=_]: #schema & {name: Name}

elems: {
	one: {
		ans: "solo"
		num: 1
	}
	two: {
		ans: "life"
	}
}

elems: other: {ans: "id", num: 23}

//Execute: cue export patterns.cue --out json
