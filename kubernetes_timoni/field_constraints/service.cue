package main

// Set the schema
nginxSvc: #Service

nginxSvc: {
    metadata: name: "nginx"
    spec: {
        selector: "app.kubernetes.io/name": "nginx"
        ports: [{
            name:       "http"
            port:       80
            targetPort: "http"
        }]
    }
}

//Execute: cue vet schema.cue data.cue