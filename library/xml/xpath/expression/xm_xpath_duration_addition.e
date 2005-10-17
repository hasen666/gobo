indexing

	description:

	"Objects that handle addition and subtraction of XPath durations"

library: "Gobo Eiffel XPath Library"
copyright: "Copyright (c) 2004, Colin Adams and others"
license: "Eiffel Forum License v2 (see forum.txt)"
date: "$Date$"
revision: "$Revision$"

class XM_XPATH_DURATION_ADDITION

inherit
	
	XM_XPATH_ARITHMETIC_EXPRESSION
		redefine
			evaluate_item
		end

create

	make

feature -- Evaluation

	evaluate_item (a_context: XM_XPATH_CONTEXT) is
			-- Evaluate `Current' as a single item;
			-- We only take this path if the type could not be determined statically.
		local
			a_duration, another_duration: XM_XPATH_DURATION_VALUE
		do
			first_operand.evaluate_item (a_context)
			if first_operand.last_evaluated_item = Void then
				last_evaluated_item := Void
			elseif first_operand.last_evaluated_item.is_error then
				last_evaluated_item := first_operand.last_evaluated_item
			else
				a_duration := first_operand.last_evaluated_item.as_atomic_value.as_duration_value
				second_operand.evaluate_item (a_context)
				if second_operand.last_evaluated_item = Void then
				last_evaluated_item := Void
				elseif second_operand.last_evaluated_item.is_error then
					last_evaluated_item := second_operand.last_evaluated_item
				else
					another_duration := second_operand.last_evaluated_item.as_atomic_value.as_duration_value
					if operator = Plus_token then
						last_evaluated_item := a_duration.plus (another_duration)
					else
						check
							minus: operator = Minus_token
						end
						last_evaluated_item := a_duration.minus (another_duration)
					end
				end
			end
		end

end
	