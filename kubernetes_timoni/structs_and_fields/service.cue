package main

nginxSvc: {
    apiVersion: "v1"
    kind:       "Service"
    metadata: {
        name:      "nginx"
        namespace: "default"
    }
    spec: {
        selector: "app.kubernetes.io/name": "nginx"
        ports: [{
            name:       "http"
            port:       80
            targetPort: 80
        }]
    }
}
//Execute: cue export -e nginxSvc --out yaml  or cue eval -e nginxSvc --out yaml