indexing

	description:

		"Names of Eiffel infix '//' features"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2002, Eric Bezault and others"
	license: "Eiffel Forum License v1 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

class ET_INFIX_DIV_NAME

inherit

	ET_INFIX_DIV

	ET_INFIX_NAME
		undefine
			is_infix_div
		end

creation

	make

end
