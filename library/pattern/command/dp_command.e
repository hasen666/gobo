indexing

	description:

		"Executable commands"

	library: "Gobo Eiffel Pattern Library"
	copyright: "Copyright (c) 2001, Eric Bezault and others"
	license: "Eiffel Forum License v1 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

deferred class DP_COMMAND

feature -- Status report

	is_executable: BOOLEAN is
			-- Can current command be executed?
			-- (Default: True.)
		do
			Result := True
		end

feature -- Execution

	execute is
			-- Execute current command.
		require
			is_executable: is_executable
		deferred
		end

end
