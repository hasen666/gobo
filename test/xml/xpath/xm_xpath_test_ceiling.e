indexing

	description:

		"Test XPath ceiling() function."

	library: "Gobo Eiffel XPath Library"
	copyright: "Copyright (c) 2005, Colin Adams and others"
	license: "Eiffel Forum License v2 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

deferred class XM_XPATH_TEST_CEILING

inherit

	TS_TEST_CASE
		redefine
			set_up
		end

	XM_XPATH_TYPE
	
	XM_XPATH_ERROR_TYPES

	XM_XPATH_SHARED_CONFORMANCE

	KL_IMPORTED_STRING_ROUTINES

	KL_SHARED_STANDARD_FILES

feature -- Constants

	eleven: MA_DECIMAL is
			-- 11 as a decimal
		once
			create Result.make_from_integer (11)
		ensure
			eleven_not_void: Result /= Void
		end

	minus_ten: MA_DECIMAL is
			-- -10 as a decimal
		once
			create Result.make_from_integer (-10)
		ensure
			minus_ten_not_void: Result /= Void
		end

feature -- Tests

	test_positive_ceiling is
			-- Test fn:ceiling (10.5) returns 11.
		local
			an_evaluator: XM_XPATH_EVALUATOR
			evaluated_items: DS_LINKED_LIST [XM_XPATH_ITEM]
			a_decimal_value: XM_XPATH_DECIMAL_VALUE
		do
			create an_evaluator.make (18, False)
			an_evaluator.set_string_mode_ascii
			an_evaluator.build_static_context ("./data/books.xml", False, False, False, True)
			assert ("Build successfull", not an_evaluator.was_build_error)
			an_evaluator.evaluate ("ceiling (10.5)")
			assert ("No evaluation error", not an_evaluator.is_error)
			evaluated_items := an_evaluator.evaluated_items
			assert ("One evaluated item", evaluated_items /= Void and then evaluated_items.count = 1)
			a_decimal_value ?= evaluated_items.item (1)
			assert ("Decimal value", a_decimal_value /= Void)
			assert ("Result is 11", a_decimal_value.value.is_equal (eleven))
		end

	test_negative_ceiling is
			-- Test fn:ceiling (-10.5) returns -10.
		local
			an_evaluator: XM_XPATH_EVALUATOR
			evaluated_items: DS_LINKED_LIST [XM_XPATH_ITEM]
			a_decimal_value: XM_XPATH_DECIMAL_VALUE
		do
			create an_evaluator.make (18, False)
			an_evaluator.set_string_mode_ascii
			an_evaluator.build_static_context ("./data/books.xml", False, False, False, True)
			assert ("Build successfull", not an_evaluator.was_build_error)
			an_evaluator.evaluate ("ceiling (-10.5)")
			assert ("No evaluation error", not an_evaluator.is_error)
			evaluated_items := an_evaluator.evaluated_items
			assert ("One evaluated item", evaluated_items /= Void and then evaluated_items.count = 1)
			a_decimal_value ?= evaluated_items.item (1)
			assert ("Decimal value", a_decimal_value /= Void)
			assert ("Result is -10", a_decimal_value.value.is_equal (minus_ten))
		end

	test_positive_double_ceiling is
			-- Test fn:ceiling (10.5E0) returns 11.0.
		local
			an_evaluator: XM_XPATH_EVALUATOR
			evaluated_items: DS_LINKED_LIST [XM_XPATH_ITEM]
			a_double_value: XM_XPATH_DOUBLE_VALUE
		do
			create an_evaluator.make (18, False)
			an_evaluator.set_string_mode_ascii
			an_evaluator.build_static_context ("./data/books.xml", False, False, False, True)
			assert ("Build successfull", not an_evaluator.was_build_error)
			an_evaluator.evaluate ("ceiling (10.5E0)")
			assert ("No evaluation error", not an_evaluator.is_error)
			evaluated_items := an_evaluator.evaluated_items
			assert ("One evaluated item", evaluated_items /= Void and then evaluated_items.count = 1)
			a_double_value ?= evaluated_items.item (1)
			assert ("Double value", a_double_value /= Void)
			assert ("Result is 11.0", a_double_value.value = 11.0)
		end

	test_negative_double_ceiling is
			-- Test fn:ceiling (-10.5) returns -10.0.
		local
			an_evaluator: XM_XPATH_EVALUATOR
			evaluated_items: DS_LINKED_LIST [XM_XPATH_ITEM]
			a_double_value: XM_XPATH_DOUBLE_VALUE
		do
			create an_evaluator.make (18, False)
			an_evaluator.set_string_mode_ascii
			an_evaluator.build_static_context ("./data/books.xml", False, False, False, True)
			assert ("Build successfull", not an_evaluator.was_build_error)
			an_evaluator.evaluate ("ceiling (-10.5E0)")
			assert ("No evaluation error", not an_evaluator.is_error)
			evaluated_items := an_evaluator.evaluated_items
			assert ("One evaluated item", evaluated_items /= Void and then evaluated_items.count = 1)
			a_double_value ?= evaluated_items.item (1)
			assert ("Double value", a_double_value /= Void)
			assert ("Result is -10.0", a_double_value.value = -10.0)
		end

	set_up is
		do
			conformance.set_basic_xslt_processor
		end

end

			
