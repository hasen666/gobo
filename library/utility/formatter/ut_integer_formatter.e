indexing

	description:

		"Integer formatters"

	library: "Gobo Eiffel Utility Library"
	copyright: "Copyright (c) 1999-2001, Eric Bezault and others"
	license: "Eiffel Forum License v1 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

class UT_INTEGER_FORMATTER

inherit

	KL_IMPORTED_STRING_ROUTINES
	KL_IMPORTED_INTEGER_ROUTINES

feature -- Access

	decimal_integer_out (an_int: INTEGER): STRING is
			-- Decimal representation of `an_int';
			-- Return a new string at each call.
			-- Regexp: 0|(-?[1-9][0-9]*)
		do
			Result := STRING_.make (10)
			append_decimal_integer (Result, an_int)
		ensure
			decimal_integer_out_not_void: Result /= Void
		end

	octal_integer_out (an_int: INTEGER): STRING is
			-- Octal representation of `an_int';
			-- Return a new string at each call.
			-- Regexp: 0|[1-7][0-7]*
		require
			an_int_positive: an_int >= 0
		do
			Result := STRING_.make (10)
			append_octal_integer (Result, an_int)
		ensure
			octal_integer_out_not_void: Result /= Void
		end

	hexadecimal_integer_out (an_int: INTEGER; uppercase: BOOLEAN): STRING is
			-- Hexadecimal representation of `an_int';
			-- Return a new string at each call.
			-- Regexp:
			--    uppercase:      0|[1-9A-F][0-9A-F]*
			--    not uppercase:  0|[1-9a-f][0-9a-f]*
		require
			an_int_positive: an_int >= 0
		do
			Result := INTEGER_.to_hexadecimal (an_int, uppercase)
		ensure
			hexadecimal_integer_out_not_void: Result /= Void
		end

feature -- String handling

	append_decimal_integer (a_string: STRING; an_int: INTEGER) is
			-- Append decimal representation of `an_int' to `a_string'.
			-- Regexp: 0|(-?[1-9][0-9]*)
		require
			a_string_not_void: a_string /= Void
		local
			j, k, i, nb: INTEGER
			c: CHARACTER
		do
			if an_int = 0 then
				a_string.append_character ('0')
			else
				if an_int < 0 then
					a_string.append_character ('-')
					k := -an_int
				else
					k := an_int
				end
				from until k = 0 loop
					inspect k \\ 10
					when 0 then
						a_string.append_character ('0')
					when 1 then
						a_string.append_character ('1')
					when 2 then
						a_string.append_character ('2')
					when 3 then
						a_string.append_character ('3')
					when 4 then
						a_string.append_character ('4')
					when 5 then
						a_string.append_character ('5')
					when 6 then
						a_string.append_character ('6')
					when 7 then
						a_string.append_character ('7')
					when 8 then
						a_string.append_character ('8')
					when 9 then
						a_string.append_character ('9')
					end
					k := k // 10
					nb := nb + 1
				end
				from
					j := a_string.count
					i := j - nb + 1
				until
					i >= j
				loop
					c := a_string.item (i)
					a_string.put (a_string.item (j), i)
					a_string.put (c, j)
					i := i + 1
					j := j - 1
				end
			end
		end

	append_octal_integer (a_string: STRING; an_int: INTEGER) is
			-- Append octal representation of `an_int' to `a_string'.
			-- Regexp: 0|[1-7][0-7]*
		require
			a_string_not_void: a_string /= Void
			an_int_positive: an_int >= 0
		local
			j, k, i, nb: INTEGER
			c: CHARACTER
		do
			if an_int = 0 then
				a_string.append_character ('0')
			else
				from k := an_int until k = 0 loop
					inspect k \\ 8
					when 0 then
						a_string.append_character ('0')
					when 1 then
						a_string.append_character ('1')
					when 2 then
						a_string.append_character ('2')
					when 3 then
						a_string.append_character ('3')
					when 4 then
						a_string.append_character ('4')
					when 5 then
						a_string.append_character ('5')
					when 6 then
						a_string.append_character ('6')
					when 7 then
						a_string.append_character ('7')
					end
					k := k // 8
					nb := nb + 1
				end
				from
					j := a_string.count
					i := j - nb + 1
				until
					i >= j
				loop
					c := a_string.item (i)
					a_string.put (a_string.item (j), i)
					a_string.put (c, j)
					i := i + 1
					j := j - 1
				end
			end
		end

	append_hexadecimal_integer (a_string: STRING; an_int: INTEGER; uppercase: BOOLEAN) is
			-- Append hexadecimal representation of `an_int' to `a_string'.
			-- Regexp:
			--    uppercase:      0|[1-9A-F][0-9A-F]*
			--    not uppercase:  0|[1-9a-f][0-9a-f]*
		require
			a_string_not_void: a_string /= Void
			an_int_positive: an_int >= 0
		do
			INTEGER_.append_hexadecimal_integer (a_string, an_int, uppercase)
		end

feature -- File handling

	put_decimal_integer (a_file: KI_TEXT_OUTPUT_STREAM; an_int: INTEGER) is
			-- Write decimal representation of `an_int' to `a_file'.
			-- Regexp: 0|(-?[1-9][0-9]*)
		require
			a_file_not_void: a_file /= Void
			a_file_is_open_write: a_file.is_open_write
		do
			a_file.put_string (decimal_integer_out (an_int))
		end

	put_octal_integer (a_file: KI_TEXT_OUTPUT_STREAM; an_int: INTEGER) is
			-- Write octal representation of `an_int' to `a_file'.
			-- Regexp: 0|[1-7][0-7]*
		require
			a_file_not_void: a_file /= Void
			a_file_is_open_write: a_file.is_open_write
			an_int_positive: an_int >= 0
		do
			a_file.put_string (octal_integer_out (an_int))
		end

	put_hexadecimal_integer (a_file: KI_TEXT_OUTPUT_STREAM; an_int: INTEGER; uppercase: BOOLEAN) is
			-- Write hexadecimal representation of `an_int' to `a_file'.
			-- Regexp:
			--    uppercase:      0|[1-9A-F][0-9A-F]*
			--    not uppercase:  0|[1-9a-f][0-9a-f]*
		require
			a_file_not_void: a_file /= Void
			a_file_is_open_write: a_file.is_open_write
			an_int_positive: an_int >= 0
		do
			a_file.put_string (hexadecimal_integer_out (an_int, uppercase))
		end

end
