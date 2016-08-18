visualizations
gtInspectorLogIn: composite
	<gtInspectorPresentationOrder: 20>
	composite table
		title: 'Log';
		display: self entries;
		column: 'NUMA' evaluated: #numa width: 50;
		column: 'Core' evaluated: #core width: 50;
		column: 'IP' evaluated: [ :e | e ip printStringBase: 16] width: 80;
		column: 'Timestamp (TSC)' evaluated: #tsc;
		column: 'Lag (cycles)' evaluated: [ :e | e lag asStringWithCommas ] width: 100;
		column: 'Message' evaluated: [ :e | e messageTemplate lineNumber: 1];
		send: #value.
		