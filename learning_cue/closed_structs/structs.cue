#a: close({
	field: int
})

//b: #a & {
//	field: 3
//}

b: #a & {
	feild: 3
}

//Execute: cue eval -i structs.cue
//Execute: cue export structs.cue
