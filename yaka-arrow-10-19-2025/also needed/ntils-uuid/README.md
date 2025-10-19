# ntils:uuid
UUID contains efficient functions for accessing entity UUIDs. These functions should be used instead of your own in any situation where you wish to work with UUIDs.

A small note: Since this uses a 16-bit lookup table, it can convert an int UUID into its hex form about 30% faster than https://github.com/gibbsly/gu.