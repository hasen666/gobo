indexing

	description:

		"Echo tasks"

	library: "Gobo Eiffel Ant"
	copyright: "Copyright (c) 2001, Sven Ehrke and others"
	license: "Eiffel Forum License v1 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

class GEANT_ECHO_TASK

inherit

	GEANT_TASK
		rename
			make as task_make
		redefine
			command
		end

creation

	make

feature {NONE} -- Initialization

	make (a_project: GEANT_PROJECT; an_xml_element: GEANT_XML_ELEMENT) is
			-- Create a new task with information held in `an_element'.
		local
			a_value: STRING
		do
			!! command.make (a_project)
			task_make (command, an_xml_element)
			if has_uc_attribute (Message_attribute_name) then
				a_value := attribute_value (Message_attribute_name.out)
				command.set_message (a_value)
			end
		end

feature -- Access

	command: GEANT_ECHO_COMMAND
			-- Echo commands

feature {NONE} -- Constants

	Message_attribute_name: UC_STRING is
			-- Name of xml attribute message.
		once
			Result := new_unicode_string ("message")
		ensure
			attribute_name_not_void: Result /= Void
			atribute_name_not_empty: Result.count > 0
		end

end -- class GEANT_ECHO_TASK
