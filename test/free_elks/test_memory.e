indexing

	description:

		"Test features of class MEMORY"

	library: "FreeELKS Library"
	copyright: "Copyright (c) 2006, Eric Bezault and others"
	license: "Eiffel Forum License v2 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

class TEST_MEMORY

inherit

	TEST_CASE

	MEMORY

feature -- Test

	run_all is
			-- Run all tests.
		do
			test_is_in_final_collect
		end

	test_is_in_final_collect is
			-- Test feature 'is_in_final_collect'.
		do
			assert ("is_in_final_collect1", not is_in_final_collect)
		end

end