# ntils:singularity
Singularity is the beating heart of ntils. It handles loading the datapacks and checking to make sure all modules are up-to-date and have the correct dependencies installed. Additionally, it has its own function tags for tick and load functions. All of its tags are listed below.
### data
This is a function tag called on load, before the load tag calls. It should contain a single command in this format:

```
data modify storage ntils:in singularity append value {
    id: string, The namespace of this datapack
	display: {
	    name: string, The string name of this datapack for debug output
		desc: string, The string description of this datapack
	}
	version: int,
	dependency: [
	    {
	        id: string, The ID of any dependency of this datapack.
		               Dependencies are optional.
		    version: {min:int, max:int}
	    }
	]
}
```
### tick
This is a replacement for the vanilla tick tag, used so that it runs after any ticking ntils modules.
### load
This is the load tag called by `singularity`