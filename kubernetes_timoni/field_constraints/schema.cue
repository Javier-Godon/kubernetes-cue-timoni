package main

#Service: {
    apiVersion: string | *"v1"
    kind:       string | *"Service"
    metadata: {
        name!:     string & =~"^[a-z0-9]([-a-z0-9]*[a-z0-9])?$"
        namespace: string | *"default"
        labels?: [string]:      string
        annotations?: [string]: string
    }
    spec!: {
        type:          *"ClusterIP" | "NodePort" | "LoadBalancer" | "ExternalName"
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