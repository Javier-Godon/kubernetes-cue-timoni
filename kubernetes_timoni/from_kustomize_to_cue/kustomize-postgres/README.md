from base: 

cue import -f -o postgres-configmap.cue postgres-configmap.yaml
cue import -f -o postgres-deployment.cue postgres-deployment.yaml
cue import -f -o postgres-persistence.cue postgres-persistence.yaml