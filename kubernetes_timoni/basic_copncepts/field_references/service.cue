package main

nginxSvc: #Service & {
	metadata: {
		name: "nginx"
		// Reference the metadata name field
		namespace: name
	}
	spec: {
		// Reference the metadata name field
		selector: "app.kubernetes.io/name": metadata.name
		ports: [{
			name: "http"
			port: 80
			// Reference the port name field
			targetPort: name
		}]
	}
}


//Execute: cue eval schema.cue service.cue --out yaml
