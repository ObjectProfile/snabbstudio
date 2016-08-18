reading
readEntry: aStream
	"struct timeline_entry {
    uint64_t tsc;                    // CPU timestamp
    uint64_t ip;                     // Instruction pointer of logger
    uint32_t aux;                    // TSC_AUX: core (bits 0-7) + numa (12-15)
    uint32_t reserved;               // (pad to 64 bytes)
    uint64_t msg_id;                 // category:24, message:24, priority:16
    uint64_t msg0, msg1, msg2, msg3; // message arguments
  };"

	| entry |
	(entry := SBTimelineEntry new)
		tsc: ((aStream next: 8) unsignedLongLongAt: 1);
		ip: ((aStream next: 8) unsignedLongLongAt: 1);
		aux: (aStream next: 4).
	entry tsc = 0
		ifTrue: [ ^ nil ].
	"skip reserved"
	aStream skip: 4.
	entry core: (entry aux unsignedByteAt: 1).
	entry numa: (entry aux unsignedByteAt: 4).
	entry messageId: (aStream next: 8).
	"do not skip msg0 .. msg3"
	"aStream skip: 32."
	entry msg0: ((aStream next: 8) unsignedLongLongAt: 1).
	entry msg1: ((aStream next: 8) unsignedLongLongAt: 1).
	entry msg2: ((aStream next: 8) unsignedLongLongAt: 1).
	entry msg3: ((aStream next: 8) unsignedLongLongAt: 1).
	^ entry