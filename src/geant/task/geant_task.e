indexing

	description:

		"Geant Tasks using a XML definitions"

	library: "Gobo Eiffel Ant"
	copyright: "Copyright (c) 2001, Sven Ehrke and others"
	license: "Eiffel Forum License v1 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

class GEANT_TASK

inherit

	GEANT_INTERPRETING_ELEMENT
		rename
			make as interpreting_element_make
		end

	KL_SHARED_FILE_SYSTEM
		export
			{NONE} all
		end

feature {NONE} -- Initialization

	make (a_command: like command; a_xml_element: GEANT_XML_ELEMENT) is
			-- Create new task with information held in `an_element'.
		require
			a_command_not_void: a_command /= Void
			a_xml_element_not_void: a_xml_element /= Void
		do
			set_command (a_command)
			interpreting_element_make (a_command.project, a_xml_element)
		end

feature -- Access

	command: GEANT_COMMAND
			-- Geant command to perform current task

feature -- Status report

	is_executable: BOOLEAN is
			-- Can task be executed?
		do
			Result := command.is_executable
		end

	exit_code: INTEGER is
			-- Exit code of last execution
		do
			Result := command.exit_code
		end

feature -- Setting

	set_command (a_command: like command) is
			-- Set `command' to `a_command'.
		do
			command := a_command
		ensure
			command_set: command = a_command
		end

feature -- Execution

	execute is
			-- Execute command.
		require
			is_executable: is_executable
		local
			a_old_task_cwd: STRING
			a_new_task_cwd: STRING
		do
			a_old_task_cwd := file_system.current_working_directory
				-- change to task directory if "dir" attribute is provided:
			if xml_element.has_attribute (Dir_attribute_name) then
				a_new_task_cwd := project.variables.interpreted_string (
					xml_element.attribute_value_by_name (Dir_attribute_name).out)
				project.trace_debug ("changing to directory: '" + a_new_task_cwd + "'%N")
				file_system.set_current_working_directory (a_new_task_cwd)
			end

			command.execute

				-- change back to previous directory even if "dir" attribute
				-- was not provided since the command itself might have changed
				-- the current working directory:
			project.trace_debug ("changing to directory: '" + a_old_task_cwd + "'%N")
			file_system.set_current_working_directory (a_old_task_cwd)
		end

end
