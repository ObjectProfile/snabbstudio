accessing
buildNameMapping
	^ Dictionary
		with: 'basic1' -> 'basic1-100e6'
		with: 'blast64' -> 'packetblaster-64'
		with: 'blastS64' -> 'packetblaster-synth-64'
		with: 'dpdk64' -> 'nfv-packetblaster'
		with: 'iperf1500' -> 'nfv'
		with: 'iperf9000' -> 'nfv-jumbo'