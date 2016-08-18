visualizations
gtInspectorBreathsLogIn: composite
	<gtInspectorPresentationOrder: 20>
	composite table
		title: 'Breaths Log';
		display: self breaths;
		column: 'NUMA' evaluated: #numa width: 50;
		column: 'Core' evaluated: #core width: 50;
		column: 'IP' evaluated: [ :e | e ip printStringBase: 16 ] width: 80;
		column: 'Timestamp (TSC)' evaluated: #tsc width: 120;
		column: 'Cycles' evaluated: [ :e | e cyclesPerBreath asStringWithCommas ] width: 100;
		column: 'Bytes per packet'
			evaluated: [ :e | e bytesPerPacket asStringWithCommas ]
			width: 110;
		column: 'Packet per breath'
			evaluated: [ :e | e packetsPerBreath asStringWithCommas ]
			width: 110;
		column: 'Packets per K cycle'
			evaluated: [ :e | (e packetsPerKCycle round: 4) asString ];
		send: #value