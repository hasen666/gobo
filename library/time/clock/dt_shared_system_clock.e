indexing

	description:

		"Shared system clocks"

	pattern:    "Singleton"
	library:    "Gobo Eiffel Time Library"
	author:     "Eric Bezault <ericb@gobosoft.com>"
	copyright:  "Copyright (c) 2001, Eric Bezault and others"
	license:    "Eiffel Forum Freeware License v1 (see forum.txt)"
	date:       "$Date$"
	revision:   "$Revision$"

class DT_SHARED_SYSTEM_CLOCK

feature -- Access

	system_clock: DT_SYSTEM_CLOCK is
			-- Local system clock
		once
			!! Result.make
		ensure
			system_clock_not_void: Result /= Void
		end

	utc_system_clock: DT_UTC_SYSTEM_CLOCK is
			-- UTC system clock
		once
			!! Result.make
		ensure
			utc_system_clock_not_void: Result /= Void
		end

end -- class DT_SHARED_SYSTEM_CLOCK
