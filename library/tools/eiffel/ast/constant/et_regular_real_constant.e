indexing

	description:

		"Eiffel real constants with no underscore"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 1999-2002, Eric Bezault and others"
	license: "Eiffel Forum License v1 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

class ET_REGULAR_REAL_CONSTANT

inherit

	ET_REAL_CONSTANT

creation

	make

feature {NONE} -- Initialization

	make (a_literal: like literal; a_position: like literal_position) is
			-- Create a new Real constant.
		require
			a_literal_not_void: a_literal /= Void
			-- valid_literal: regexp: ([0-9]+\.[0-9]*|[0-9]*\.[0-9]+)([eE][+-]?[0-9]+)?
			a_position_not_void: a_position /= Void
		do
			literal := a_literal
			literal_position := a_position
		ensure
			literal_set: literal = a_literal
			literal_position_set: literal_position = a_position
		end

invariant

	-- valid_literal: regexp: ([0-9]+\.[0-9]*|[0-9]*\.[0-9]+)([eE][+-]?[0-9]+)?

end
