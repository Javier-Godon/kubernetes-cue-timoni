package main

nginxSvc: #Service & {
    let kubeLabel = "app.kubernetes.io"
    metadata: {
        name:      "nginx"
        namespace: name
    }
    spec: {
        selector: {
            "\(kubeLabel)/name":      metadata.name
            "\(kubeLabel)/component": "proxy"
        }
        ports: [{
            name: "http-\(metadata.name)"
            port: 80
        }]
    }
}

//Execute: cue eval schema.cue service.cue --out yaml