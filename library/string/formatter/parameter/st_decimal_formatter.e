indexing

	description:

		"Formatters for integer parameters, $d or $i"

	library: "Gobo Eiffel String Library"
	copyright: "Copyright (c) 2004-2005, Object-Tools and others"
	license: "Eiffel Forum License v2 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

class ST_DECIMAL_FORMATTER

inherit

	ST_INTEGER_FORMATTER

creation

	make

feature -- Access

	base: INTEGER is 10
			-- Base used to format integer;
			-- 8 for octal, 10 for decimal, 16 for hexadecimal, ...

end