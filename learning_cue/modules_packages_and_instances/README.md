**Initialize a module:**

```
cue mod init [module name]
```

The module name is required if a package within the module needs to import another package within
the module.

A module can also be created by setting up the cue.mod directory and module.cue file manually.

**CUE modules must start with a hostname**

In this example:

```
cue mod init bluesolution.com/modules_packages_and_instances
```

module.cue will contain:

```
module: "bluesolution.com/modules_packages_and_instances"
```







