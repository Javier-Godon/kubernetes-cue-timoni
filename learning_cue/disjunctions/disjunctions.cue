//Disjunctions, or sum types, define a new type that is one of several things.
//In the example, our Conn definition of earlier is augmented to define the possible values
//for protocol: "tcp" or "udp". 
//It is an error for a concrete Conn to define anything else than these two values.

#Conn: {
	address:  string
	port:     int
	protocol: "tcp" | "udp"
}

lossy: #Conn & {
	address:  "1.2.3.4"
	port:     8888
	protocol: "udp"
}

//Execute: cue export disjunctions.cue 
