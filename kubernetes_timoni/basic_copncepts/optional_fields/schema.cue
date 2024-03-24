package main

#Service: {
    apiVersion: string | *"v1"
    kind:       string | *"Service"
    metadata: {
        name!:     string
        namespace: string | *"default"
        labels?: [string]:      string
        annotations?: [string]: string
    }
    spec!: {
        type?:         string
        clusterIP?:    string
        externalName?: string
        selector?: [string]: string
        ports?: [...{
            name?:       string
            protocol:    *"TCP" | "UDP" | "SCTP"
            port!:       int & >=1 & <=65535
            targetPort?: int | string
        }]
    }
}