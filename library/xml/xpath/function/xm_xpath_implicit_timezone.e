indexing

	description:

		"Objects that implement the XPath implicit-timezone function"

	library: "Gobo Eiffel XPath Library"
	copyright: "Copyright (c) 2005, Colin Adams and others"
	license: "Eiffel Forum License v2 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

class XM_XPATH_IMPLICIT_TIMEZONE

inherit

	XM_XPATH_SYSTEM_FUNCTION
		redefine
			evaluate_item
		end

create

	make

feature {NONE} -- Initialization

	make is
			-- Establish invariant
		do
			name := "implicit-timezone"
			namespace_uri := Xpath_standard_functions_uri
			fingerprint := Implicit_timezone_function_type_code
			minimum_argument_count := 0
			maximum_argument_count := 0
			create arguments.make (0)
			arguments.set_equality_tester (expression_tester)
			initialized := True
		end

feature -- Access

	item_type: XM_XPATH_ITEM_TYPE is
			-- Data type of the expression, where known
		do
			Result := type_factory.day_time_duration_type
			if Result /= Void then
				-- Bug in SE 1.0 and 1.1: Make sure that
				-- that `Result' is not optimized away.
			end
		end

feature -- Status report

	required_type (argument_number: INTEGER): XM_XPATH_SEQUENCE_TYPE is
			-- Type of argument number `argument_number'
		do
			-- never called
		end

feature -- Evaluation

	evaluate_item (a_context: XM_XPATH_CONTEXT) is
			-- Evaluate as a single item
		local
			tz: DT_FIXED_OFFSET_TIME_ZONE
			td: DT_TIME_DURATION
			dd: DT_DATE_DURATION
			a_duration: DT_DATE_TIME_DURATION
		do
			tz := a_context.implicit_timezone
			td := tz.fixed_offset
			create dd.make (0, 0, 0)
			create a_duration.make_from_date_time_duration (dd, td)
			create {XM_XPATH_SECONDS_DURATION_VALUE} last_evaluated_item.make_from_duration (a_duration)
		end

feature {XM_XPATH_EXPRESSION} -- Restricted

	compute_cardinality is
			-- Compute cardinality.
		do
			set_cardinality_exactly_one
		end

end
	