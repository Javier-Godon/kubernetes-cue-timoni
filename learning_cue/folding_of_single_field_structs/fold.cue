//In JSON, one defines nested values, one value at a time. 
//Another way to look at this is that a JSON configuration is a set of path-value pairs.
//In CUE one defines a set of paths to which to apply a concrete value or constraint all at once.
//Because of CUE’s order independence, values get merged

//path-value pairs
outer: middle1: inner: 3
outer: middle2: inner: 7

//collection-constraint pair
outer: [string]: inner: int

//Execute: cue export fold.cue