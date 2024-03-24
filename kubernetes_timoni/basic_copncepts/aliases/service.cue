//In CUE, an alias defines a local value that is not a member of a struct and is omitted from the output.
// Aliases are useful when you want to perform intermediate calculations and reuse
// the result in multiple places within the same struct.

package main

//let appName = "nginx"

nginxSvc: #Service & {
    let appName = "nginx"
    metadata: {
        name:      appName
        namespace: appName
    }
    spec: {
        selector: "app.kubernetes.io/name": appName
        ports: [{
            name: "http"
            port: 80
        }]
    }
}

//Execute: cue eval schema.cue service.cue --out yaml