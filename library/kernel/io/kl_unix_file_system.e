indexing

	description:

		"Unix-like file systems"

	library: "Gobo Eiffel Kernel Library"
	copyright: "Copyright (c) 2001, Eric Bezault and others"
	license: "Eiffel Forum License v1 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

class KL_UNIX_FILE_SYSTEM

inherit

	KL_FILE_SYSTEM

creation

	make

feature -- File handling

	new_input_file (a_name: STRING): KL_UNIX_INPUT_FILE is
			-- New input text file in current file system
			-- (`a_name' should follow the pathname convention
			-- of the underlying platform. For pathname conversion
			-- use KI_FILE_SYSTEM.pathname_from_file_system.)
		do
			!! Result.make (a_name)
		end

	new_output_file (a_name: STRING): KL_UNIX_OUTPUT_FILE is
			-- New output text file in current file system
			-- (`a_name' should follow the pathname convention
			-- of the underlying platform. For pathname conversion
			-- use KI_FILE_SYSTEM.pathname_from_file_system.)
		do
			!! Result.make (a_name)
		end

	eol: STRING is "%N"
			-- Line separator in current file system

feature -- Pathname handling

	is_absolute_pathname (a_pathname: STRING): BOOLEAN is
			-- Is `a_pathname' an absolute pathname?
			-- (`a_pathname' should follow the Unix pathname convention.
			-- For pathname conversion use `pathname_from_file_system'.)
		do
			Result := (a_pathname.count > 0 and then a_pathname.item (1) = directory_separator)
		end

	is_relative_pathname (a_pathname: STRING): BOOLEAN is
			-- Is `a_pathname' a relative pathname (relative
			-- to the current working directory)?
			-- (`a_pathname' should follow the Unix pathname convention.
			-- For pathname conversion use `pathname_from_file_system'.)
		do
			Result := not is_absolute_pathname (a_pathname)
		ensure then
			definition: Result = not is_absolute_pathname (a_pathname)
		end

	is_root_directory (a_dirname: STRING): BOOLEAN is
			-- Is `a_dirname' a root directory (i.e. it has no parent directory)?
			-- (`a_dirname' should follow the Unix pathname convention.
			-- For pathname conversion use `pathname_from_file_system'.)
		local
			i, nb: INTEGER
		do
			nb := a_dirname.count
			if nb > 0 then
				Result := True
				from i := 1 until i > nb loop
					if a_dirname.item (i) /= directory_separator then
						Result := False
						i := nb + 1 -- Jump out of the loop.
					else
						i := i + 1
					end
				end
			end
		end

	basename (a_pathname: STRING): STRING is
			-- Pathname with any leading directory components removed
			-- (`a_pathname' should follow the Unix pathname convention.
			-- The result also follows this pathname convention. For
			-- pathname conversion use `pathname_from_file_system'.)
		local
			i, nb: INTEGER
		do
			if is_root_directory (a_pathname) then
				Result := root_directory
			else
				from
					i := a_pathname.count
				until
					i < 1 or else
					a_pathname.item (i) /= directory_separator
				loop
					i := i - 1
				end
				nb := i
				from
				until
					i < 1 or else
					a_pathname.item (i) = directory_separator
				loop
					i := i - 1
				end
				if i < 1 and nb = a_pathname.count then
					Result := a_pathname
				else
					Result := a_pathname.substring (i + 1, nb)
				end
			end
		end

	dirname (a_pathname: STRING): STRING is
			-- Pathname containing only the leading directory components so
			-- that 'pathname (dirname (a_pathname), basename (a_pathname))'
			-- is equivalent to `a_pathname; Return `relative_current_directory'
			-- when there is no leading directory components in `a_pathname';
			-- Return a root directory when `a_pathname' is a root directory
			-- (`a_pathname' should follow the Unix pathname convention.
			-- The result also follows this pathname convention. For
			-- pathname conversion use `pathname_from_file_system'.)
		local
			i: INTEGER
		do
			if is_root_directory (a_pathname) then
				Result := root_directory
			else
				from
					i := a_pathname.count
				until
					i < 1 or else
					a_pathname.item (i) /= directory_separator
				loop
					i := i - 1
				end
				from
				until
					i < 1 or else
					a_pathname.item (i) = directory_separator
				loop
					i := i - 1
				end
				if i < 1 then
					Result := relative_current_directory
				else
					from
					until
						i < 1 or else
						a_pathname.item (i) /= directory_separator
					loop
						i := i - 1
					end
					if i < 1 then
						Result := root_directory
					else
						Result := a_pathname.substring (1, i)
					end
				end
			end
		end

	pathname (a_dirname, a_pathname: STRING): STRING is
			-- Pathname made up of relative pathname
			-- `a_pathname' in directory `a_dirname'
			-- (`a_dirname' and `a_pathname' should follow the Unix pathname
			-- convention. The result also follows this pathname convention.
			-- For pathname conversion use `pathname_from_file_system'.)
		local
			nb: INTEGER
		do
			Result := clone (a_dirname)
			if a_pathname.count > 0 then
				nb := Result.count
				if nb > 0 and then Result.item (nb) /= directory_separator then
					Result.append_character (directory_separator)
				end
				Result.append_string (a_pathname)
			end
		end

	nested_pathname (a_dirname: STRING; a_pathnames: ARRAY [STRING]): STRING is
			-- Pathname made up of relative pathnames
			-- `a_pathnames' in directory `a_dirname'
			-- (`a_dirname' and `a_pathnames' should follow the Unix pathname
			-- convention. The result also follows this pathname convention.
			-- For pathname conversion use `pathname_from_file_system'.)
		local
			i, nb, k: INTEGER
			a_pathname: STRING
		do
			Result := clone (a_dirname)
			i := a_pathnames.lower
			nb := a_pathnames.upper
			from until i > nb loop
				a_pathname := a_pathnames.item (i)
				if a_pathname.count > 0 then
					k := Result.count
					if k > 0 and then Result.item (k) /= directory_separator then
						Result.append_character (directory_separator)
					end
					Result.append_string (a_pathname)
				end
				i := i + 1
			end
		end

	relative_current_directory: STRING is "."
			-- Relative pathname of current directory
			-- (The result follows the Unix pathname convention. For
			-- pathname conversion use `pathname_from_file_system'.)

	relative_parent_directory: STRING is ".."
			-- Relative pathname of current parent directory
			-- (The result follows the Unix pathname convention. For
			-- pathname conversion use `pathname_from_file_system'.)

	root_directory: STRING is
			-- Pathname of current root directory
			-- (The result follows the Unix pathname convention. For
			-- pathname conversion use `pathname_from_file_system'.)
		once
			Result := "/"
		end

	absolute_pathname (a_pathname: STRING): STRING is
			-- Absolute pathname of `a_pathname'
			-- (`a_pathname' should follow the Unix pathname convention.
			-- For pathname conversion use `pathname_from_file_system'.)
		do
			if is_absolute_pathname (a_pathname) then
				Result := a_pathname
			else
				Result := pathname (cwd, a_pathname)
			end
		end

	absolute_parent_directory (a_pathname: STRING): STRING is
			-- Absolute pathname of parent directory of `a_pathname';
			-- Return `absolute_root_directory' if `a_pathname'
			-- is a root directory (i.e. has no parent)
			-- (`a_pathname' should follow the Unix pathname convention.
			-- For pathname conversion use `pathname_from_file_system'.)
		local
			an_absolute_pathname: STRING
			a_basename: STRING
			stop: BOOLEAN
		do
			from
				an_absolute_pathname := absolute_pathname (a_pathname)
			until
				stop
			loop
				a_basename := basename (an_absolute_pathname)
				if a_basename.is_equal (relative_current_directory) then
					an_absolute_pathname := dirname (an_absolute_pathname)
				elseif a_basename.is_equal (relative_parent_directory) then
					an_absolute_pathname := absolute_parent_directory (dirname (an_absolute_pathname))
				else
					stop := True
				end
			end
			an_absolute_pathname := dirname (an_absolute_pathname)
			if is_root_directory (an_absolute_pathname) then
				Result := absolute_root_directory
			else
				Result := an_absolute_pathname
			end
		end

	absolute_root_directory: STRING is
			-- Absolute pathname of current root directory
			-- (The result follows the Unix pathname convention. For
			-- pathname conversion use `pathname_from_file_system'.)
		once
			Result := "/"
		end

	string_to_pathname (a_pathname: STRING): KL_PATHNAME is
			-- Convert string to pathname
			-- (`a_pathname' should follow the Unix pathname convention.
			-- For pathname conversion use `pathname_from_file_system'.)
		local
			i, nb: INTEGER
			j, k: INTEGER
			str: STRING
		do
			!! Result.make
			nb := a_pathname.count
			if nb > 0 then
				if a_pathname.item (1) /= directory_separator then
					Result.set_relative (True)
				end
			else
				Result.set_relative (True)
			end
			from i := 1 until i > nb loop
				from
				until
					i > nb or else
					a_pathname.item (i) /= directory_separator
				loop
					i := i + 1
				end
				if i <= nb then
					j := i
					from
					until
						i > nb or else
						a_pathname.item (i) = directory_separator
					loop
						i := i + 1
					end
					k := i - 1
					str := a_pathname.substring (j, k)
					if str.is_equal (relative_current_directory) then
						Result.append_current
					elseif str.is_equal (relative_parent_directory) then
						Result.append_parent
					else
						Result.append_name (str)
					end
				end
			end
		end

	pathname_to_string (a_pathname: KI_PATHNAME): STRING is
			-- Convert pathname to string
			-- (The result follows the Unix pathname convention. For
			-- pathname conversion use `pathname_from_file_system'.)
		local
			i, nb: INTEGER
		do
			Result := STRING_.make (50)
			if not a_pathname.is_relative then
				Result.append_string (root_directory)
			end
			nb:= a_pathname.count
			from i := 1 until i >= nb loop
				if a_pathname.is_current (i) then
					Result.append_string (relative_current_directory)
				elseif a_pathname.is_parent (i) then
					Result.append_string (relative_parent_directory)
				else
					Result.append_string (a_pathname.item (i))
				end
				Result.append_character (directory_separator)
				i := i + 1
			end
			if i = nb then
				if a_pathname.is_current (i) then
					Result.append_string (relative_current_directory)
				elseif a_pathname.is_parent (i) then
					Result.append_string (relative_parent_directory)
				else
					Result.append_string (a_pathname.item (i))
				end
			end
		end

	has_extension (a_filename, an_extension: STRING): BOOLEAN is
			-- Is `an_extension' a file extension of `a_filename'?
			-- (`a_filename' should follow the Unix pathname convention.
			-- For pathname conversion use `pathname_from_file_system'.)
		local
			nb, nb2: INTEGER
		do
			nb := an_extension.count
			if nb = 0 then
				Result := True
			else
				nb2 := a_filename.count
				if nb2 >= nb then
					Result := a_filename.substring (nb2 - nb + 1, nb2).is_equal (an_extension)
				end
			end
		end

	extension (a_filename: STRING): STRING is
			-- File extension of `a_filename' (include the leading '.')
			-- (`a_filename' should follow the Unix pathname convention.
			-- For pathname conversion use `pathname_from_file_system'.)
		local
			i: INTEGER
			c: CHARACTER
			found, stop: BOOLEAN
		do
			from
				i := a_filename.count
			until
				found or stop
			loop
				c := a_filename.item (i)
				if c = '.' then
					found := True
				elseif c = directory_separator then
					stop := True
				else
					i := i - 1
				end
			end
			if found then
				Result := a_filename.substring (i, a_filename.count)
			else
				Result := ""
			end
		end

	exe_extension: STRING is ""
			-- Executable file extension (empty under Unix)

	directory_separator: CHARACTER is '/'
			-- Directory separator

end
