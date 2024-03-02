package: foo

#env: "prod"

deployments: [X=string]:{ //kee: X
	kind: "Deployment"
	name: X  //the name is allways the key
	replicas: *1 | int  //defaults to one but can be any int
	image: string

	selectors: {
		app: X  //allways the same as the name
		env: #env
	}
}

deployments: [X=string]:{ //kee: X
	kind: "Service"
	name: X  //the name is allways the key

	selectors: {
		app: X  //allways the same as the name
		env: #env
	}
}

//for every deployment we have a single service. For every deployment that we have
//exists a service with the same name and it has the same selectors and ports
for k,x in deployments {
	services: "\(k)":{
		selectors: x.selectors
		port:      x.port
	}
}