//see: https://cuelang.org/docs/tutorials/tour/types/types/

point: {
	x: number
	y: number
}
xaxis: point
xaxis: y: 0

yaxis: point
yaxis: x: 0

origin: xaxis & yaxis

//Execute: cue eval types.cue