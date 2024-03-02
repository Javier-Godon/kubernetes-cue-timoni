//CUE’s basic operations are defined in a way that the order in which you combine
//two configurations is irrelevant to the outcome.
a: {x: 1, y: int}
a: {x: int, y: 2}

b: {x: int, y: 2}
b: {x: 1, y: int}

//Execute: cue eval -i order.cue
