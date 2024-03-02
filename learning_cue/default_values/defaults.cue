		// any positive number, 1 is the default
replicas: uint | *1

protocol: *"tcp" | "udp"

//Execute: cue export defaults.cue

protocol: *"udp" | "tcp"

//Now the default value is ambiguous
//Execute: cue export defaults.cue
//Execute: cue eval defaults.cue
