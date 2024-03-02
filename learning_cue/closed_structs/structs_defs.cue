//A definition, indicated by an identifier starting with # or _#,
//defines values that are not output when converting a configuration to a concrete value.
//They are used to define schema against which concrete values can be validated.
//Structs defined by definitions are implicitly closed.

msg: "Hello \(#Name)!"

#Name: "world"

#A: {
    field: int
}

a:   #A & { field: 3 }
err: #A & { feild: 3 }

//Execute: cue eval -ic structs_defs.cue