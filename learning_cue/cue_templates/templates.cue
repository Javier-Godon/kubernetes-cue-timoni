job: [Name=_]: {
	name:     Name
	replicas: uint | *1
	command:  string
}

job: list: command: "ls"

job: nginx: {
	command:  "nginx"
	replicas: 2
}

//Execute:
//cue export templates.cue --out yaml
//cue eval templates.cue
