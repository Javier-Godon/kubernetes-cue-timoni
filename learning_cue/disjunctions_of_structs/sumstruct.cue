floor: {
	level:   int
	hasExit: bool
}

floor: {
	level:   0 | 1
	hasExit: true
} | {
	level:   -1 | 2 | 3
	hasExit: false
}

floor: {
	level: 0
}

//Execute: cue export sumstruct.cue
//Execute: cue export sumstruct.cue --out yaml
