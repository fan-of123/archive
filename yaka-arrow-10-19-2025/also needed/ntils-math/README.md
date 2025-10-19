# ntils:math
Math is a non-comprehensive math library for niche use cases not often covered in other math datapacks. Listed below are the different types of operations offered.

### Vector
Three standard operations (cross, reflect, and normalize) exist, but the notable vector operation is slerp. This is a standard entity iterator design, with more information given in its header comment(s) for how to use it and what it's for.

### Quaternion
Multiple functions for converting Euler angles into quaternions exist. These output quaternions directly into the format used by Minecraft for display transformations, so you just need to call the function and modify it in directly. Make sure to pick the one that most matches your use case, as several are highly optimized to a very specific situation. Additionally, a quaternion multiplication function is also included.

### Matrix
Two matrix functions exist: One that converts a rotation quaternion into a rotation matrix, and another that just converts three points into a 16-element display transform matrix that represents transforming something with an origin at one point and stretched to connect to the two other points. This is purely for polygon-related stuff.

### Bezier
Perhaps the most developed component of math, `bz` contains a swath of functions for working with curves. Curves are divided into `3`, `4`, and `n`, corresponding to the amount of points that define them. `3` and `4` both include functions for direct polynomial evaluation, two-step polynomial iteration, two-step physics evaluation, and control point calculation given a target point and a t value. `4` includes a function for calculating curve length.

`n` is more of a curiosity than an actually useful component. Two functions are present here: a function for evaluating a single point along an n-point curve, and a two-step iterator for n-point curves. This iterator is dramatically faster and more precise than the single-point function, but is miles slower than the dedicated `3` and `4` point iterators.

### Other
Additionally, a couple other functions exist. They will have header comments explaining their use.

## Flags

| Name                               | Effect                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| ---------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `$ntils:math.DO_SCOREBOARD_OUTPUT` | Whether the function will perform the "scale" step of its scoreboard operations. Mainly relevant to the vector/matrix/quaternion functions, which produce properly scaled storage output by default. If unset, the output will not be scaled for readibility, and will instead use the internal scale factor.<br><br>Useful for if you want to perform scoreboard math on the output. Leave unchecked otherwise for a slight performance gain. |
