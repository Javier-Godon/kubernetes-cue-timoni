package main

// Set the schema
nginxSvc: #Service

nginxSvc: {
    metadata: {
        name:      "nginx"
        namespace: "default"
    }
    spec: {
        type: "ClusterIP"
        selector: "app.kubernetes.io/name": "nginx"
        ports: [{
            name: "http"
            port: 80
            targetPort:"http"
        }]
    }
}
//Execute: cue vet schema.cue data.cue
//targetPort is optional, so I can comment that line or set it as int or string, ex 80 or http