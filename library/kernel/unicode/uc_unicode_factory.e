indexing

	description:

		"Unicode factories"

	library: "Gobo Eiffel Kernel Library"
	copyright: "Copyright (c) 2001, Eric Bezault and others"
	license: "Eiffel Forum License v1 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

class UC_UNICODE_FACTORY

inherit

	UC_IMPORTED_UTF8_ROUTINES
	UC_IMPORTED_UNICODE_ROUTINES

feature -- Access

	new_unicode_string (a_string: STRING): UC_STRING is
			-- New unicode string made up of the characters from `a_string'
		require
			a_string_not_void: a_string /= Void
		do
			!UC_UTF8_STRING! Result.make_from_string (a_string)
		ensure
			new_string_not_void: Result /= Void
		end

	new_unicode_string_from_utf8 (a_string: STRING): UC_STRING is
			-- New unicode string made up of the characters
			-- from `a_string' encoded in UTF-8
		require
			a_string_not_void: a_string /= Void
			valid_utf8: utf8.valid_utf8 (a_string)
		do
			!UC_UTF8_STRING! Result.make_from_utf8 (a_string)
		ensure
			new_string_not_void: Result /= Void
		end

	new_unicode_string_with_capacity (suggested_capacity: INTEGER): UC_STRING is
			-- New empty unicode string
		require
			non_negative_suggested_capacity: suggested_capacity >= 0
		do
			!UC_UTF8_STRING! Result.make (suggested_capacity)
		ensure
			new_string_not_void: Result /= Void
			byte_capacity_set: Result.byte_capacity >= suggested_capacity
		end

	new_unicode_string_empty: UC_STRING is
			-- New empty unicode string
		do
			!UC_UTF8_STRING! Result.make_empty
		ensure
			new_string_not_void: Result /= Void
		end

	new_unicode_string_from_substring (a_string: STRING; start_index, end_index: INTEGER): UC_STRING is
			-- New unicode string mad up of the character sequence of
			-- `a_string' between `start_index' and `end_index' inclusive
		require
			a_string_not_void: a_string /= Void
			valid_start_index: 1 <= start_index
			valid_end_index: end_index <= a_string.count
			meaningful_interval: start_index <= end_index + 1
		do
			!UC_UTF8_STRING! Result.make_from_substring (a_string, start_index, end_index)
		ensure
			new_string_not_void: Result /= Void
		end

	new_unicode_string_filled (c: CHARACTER; n: INTEGER): UC_STRING is
			-- New unicode string of length `n' filled with character `c'
		require
			valid_count: n >= 0
		do
			!UC_UTF8_STRING! Result.make_filled (c, n)
		ensure
			new_string_not_void: Result /= Void
		end

	new_unicode_string_filled_unicode (c: UC_CHARACTER; n: INTEGER): UC_STRING is
			-- New unicode string of length `n' filled with unicode character `c'
		require
			c_not_void: c /= Void
			valid_count: n >= 0
		do
			!UC_UTF8_STRING! Result.make_filled_unicode (c, n)
		ensure
			new_string_not_void: Result /= Void
		end

	new_unicode_string_filled_code (a_code: INTEGER; n: INTEGER): UC_STRING is
			-- New unicode string of length `n' filled with unicode
			-- character of code `a_code'
		require
			valid_code: unicode.valid_code (a_code)
			valid_count: n >= 0
		do
			!UC_UTF8_STRING! Result.make_filled_code (a_code, n)
		ensure
			new_string_not_void: Result /= Void
		end

	new_unicode_character (a_char: CHARACTER): UC_CHARACTER is
			-- New unicode character from Latin-1 character `a_char'
		do
			!! Result.make_from_character (a_char)
		ensure
			new_character_not_void: Result /= Void
			code_set: Result.code = a_char.code
		end

end
