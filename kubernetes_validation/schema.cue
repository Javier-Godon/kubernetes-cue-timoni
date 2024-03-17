package kube

Object: Deployment | Service
//We determine when is a Deployment or a Service by its discriminator (kind)
Service: kind:    "Service"
Deployment: kind: "Deployment"
//We enforce one replica
Deployment: spec: replicas: 1
//Labeling and selector policy
Service: {
	metadata: labels: app: metadata.name
	spec: selector: app:   metadata.name
}
Deployment: X={
	spec: template: metadata:
		labels: app: X.metadata.name
}


//Execute: cue vet schema.cue -d Object nexus-deployment.yaml
