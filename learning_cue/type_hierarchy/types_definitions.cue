
#point: {
	x: number
	y: number
}
#xaxis: #point & {
	y:0
}
//xaxis: y: 0

#yaxis: #point & {
	x:0
}
//yaxis: x: 0

origin: #xaxis & #yaxis

//Execute: cue export types_definitions.cue