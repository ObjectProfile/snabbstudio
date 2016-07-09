instance creation
strings
	"Strings section of the timeline file"

	^ (#('engine' 'sleeping $usec for $Hz' 'sleeping user' 'third entry' '' '' '')
		joinUsing: Character null) asByteArray