indexing

	description:

		"Values dealing with year, month and day"

	library: "Gobo Eiffel Time Library"
	copyright: "Copyright (c) 2000, Eric Bezault and others"
	license: "Eiffel Forum License v1 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

deferred class DT_DATE_VALUE

inherit

	UT_IMPORTED_FORMATTERS
		redefine
			out
		end

	KL_IMPORTED_STRING_ROUTINES
		undefine
			out
		end

feature -- Access

	year: INTEGER is
			-- Year
		deferred
		end

	month: INTEGER is
			-- Month
		deferred
		end

	day: INTEGER is
			-- Day
		deferred
		end

feature -- Output

	out: STRING is
			-- Printable representation (year/month/day)
		do
			Result := STRING_.make (10)
			append_to_string (Result)
		end

	date_out: STRING is
			-- Printable representation (year/month/day)
		do
			Result := STRING_.make (10)
			append_date_to_string (Result)
		ensure
			date_out_not_void: Result /= Void
		end

	append_to_string (a_string: STRING) is
			-- Append printable representation
			-- (year/month/day) to `a_string'.
		require
			a_string_not_void: a_string /= Void
		do
			append_date_to_string (a_string)
		end

	append_date_to_string (a_string: STRING) is
			-- Append printable representation
			-- (year/month/day) to `a_string'.
		require
			a_string_not_void: a_string /= Void
		do
			INTEGER_FORMATTER_.append_decimal_integer (a_string, year)
			a_string.append_character ('/')
			INTEGER_FORMATTER_.append_decimal_integer (a_string, month)
			a_string.append_character ('/')
			INTEGER_FORMATTER_.append_decimal_integer (a_string, day)
		end

end
