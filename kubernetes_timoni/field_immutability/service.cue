//In CUE fields are immutable, which means that once a field is set to a concrete value,
//its value cannot be changed.

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

nginxSvc: spec: selector: "app.kubernetes.io/component": "proxy"

//Execute: cue eval -e nginxSvc --out yaml

//if I add:
//nginxSvc: metadata: name: "nginx-2"
//cue eval -e nginxSvc --out yaml will throw an exception
