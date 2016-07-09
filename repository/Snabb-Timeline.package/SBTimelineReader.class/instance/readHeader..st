reading
readHeader: aStream
	"struct timeline_header {
    // File format magic number.
    uint32_t magic;
    uint8_t major_version, minor_version;
    uint16_t flags;
    // XXX: does not really need to be stored in the file?
    uint64_t priority_mask;
    uint64_t next;
    uint64_t last;
    char pad[32];
    struct timeline_entry entries[0];
};"

	| header |
	header := {#magic -> ((aStream next: 4) unsignedLongAt: 1).
	#majorVersion -> ((aStream next: 1) unsignedByteAt: 1).
	#minorVersion -> ((aStream next: 1) unsignedByteAt: 1).
	#flags -> ((aStream next: 2) unsignedShortAt: 1).
	#priorityMask -> ((aStream next: 8) unsignedLongLongAt: 1).
	#next -> ((aStream next: 8) unsignedLongLongAt: 1).
	#last -> ((aStream next: 8) unsignedLongLongAt: 1)} asDictionary.
	"skip padding"
	aStream skip: 32.
	^ header