indexing

	description:

		"Eiffel integer constants with no underscore"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 1999-2002, Eric Bezault and others"
	license: "Eiffel Forum License v1 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

class ET_REGULAR_INTEGER_CONSTANT

inherit

	ET_INTEGER_CONSTANT

	UT_CHARACTER_CODES
		export {NONE} all end

creation

	make

feature {NONE} -- Initialization

	make (a_literal: like literal; a_position: like literal_position) is
			-- Create a new Integer constant.
		require
			a_literal_not_void: a_literal /= Void
			-- valid_literal: regexp: [0-9]+
			a_position_not_void: a_position /= Void
		do
			literal := a_literal
			literal_position := a_position
		ensure
			literal_set: literal = a_literal
			literal_position_set: literal_position = a_position
		end

feature -- Basic operations

	compute_value is
			-- Compute value of current integer constant.
			-- Make result available in `value' or set
			-- `has_value_error' to true if an overflow or
			-- underflow occurred during computation.
		local
			v, d: INTEGER
			i, nb: INTEGER
		do
			has_value_error := False
				-- TODO: deal with overflow and underflow.
			nb := literal.count
			if is_negative then
				from i := 1 until i > nb loop
					d := literal.item (i).code - Zero_code
					v := 10 * v - d
					i := i + 1
				end
			else
				from i := 1 until i > nb loop
					d := literal.item (i).code - Zero_code
					v := 10 * v + d
					i := i + 1
				end
			end
		end

invariant

	-- valid_literal: regexp: [0-9]+

end
