```
cue export restaurant_pomodoro.yaml restaurant_split.json --out yaml
```

Different value for the same restaurant. This is not allowed --> No inheritance, no overlays

```
cue export restaurant_split.json restaurant_split_dutch.json --out yaml
```

Validate a yaml (restaurant_pomodoro.yaml) against a schema (schema.yaml)

```
cue def schema.yaml
cue vet schema.yaml restaurant_pomodoro.yaml
```


