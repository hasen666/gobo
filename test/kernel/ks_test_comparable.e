indexing

	description:

		"Test features of class COMPARABLE listed in KS_COMPARABLE"

	library: "Gobo Eiffel Kernel Library"
	copyright: "Copyright (c) 2001, Eric Bezault and others"
	license: "Eiffel Forum License v1 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

deferred class KS_TEST_COMPARABLE

inherit

	KL_TEST_CASE

feature -- Test

	test_is_equal1 is
			-- Test feature `is_equal'.
		local
			a_comparable: COMPARABLE
		do
			a_comparable := clone ("bar")
			assert ("is_equal1", a_comparable.is_equal ("bar")) 
			assert ("not_is_equal1", not a_comparable.is_equal ("foo")) 
			assert ("not_is_equal2", not a_comparable.is_equal ("ba")) 
			assert ("not_is_equal3", not a_comparable.is_equal ("bart")) 
			a_comparable := clone ("")
			assert ("is_equal2", a_comparable.is_equal ("")) 
			assert ("not_is_equal4", not a_comparable.is_equal ("foo")) 
		end

	test_is_equal2 is
			-- Test feature `is_equal'.
		local
			a_comparable: COMPARABLE
		do
			a_comparable := 10
			assert ("is_equal1", a_comparable.is_equal (10)) 
			assert ("not_is_equal1", not a_comparable.is_equal (5)) 
			assert ("not_is_equal2", not a_comparable.is_equal (11)) 
			assert ("not_is_equal3", not a_comparable.is_equal (0)) 
		end

	test_infix_less1 is
			-- Test feature `infix "<"'.
		local
			a_comparable, a_comparable2: COMPARABLE
		do
			a_comparable := clone ("foo")
			a_comparable2 := clone ("bar")
			assert ("not_less1", not (a_comparable < a_comparable2))
			assert ("not_less2", not (a_comparable < a_comparable))
			assert ("less1", a_comparable2 < a_comparable)
			a_comparable := clone ("fo")
			a_comparable2 := clone ("foo")
			assert ("less2", a_comparable < a_comparable2)
			assert ("not_less3", not (a_comparable2 < a_comparable))
			a_comparable := clone ("")
			a_comparable2 := clone ("foo")
			assert ("less3", a_comparable < a_comparable2)
			assert ("not_less4", not (a_comparable2 < a_comparable))
			a_comparable := clone ("foo")
			a_comparable2 := clone ("foo")
			assert ("not_less5", not (a_comparable < a_comparable2))
			assert ("not_less6", not (a_comparable2 < a_comparable))
		end

	test_infix_less2 is
			-- Test feature `infix "<"'.
		local
			a_comparable, a_comparable2: COMPARABLE
		do
			a_comparable := 10
			a_comparable2 := 5
			assert ("not_less1", not (a_comparable < a_comparable2))
			assert ("not_less2", not (a_comparable < a_comparable))
			assert ("less1", a_comparable2 < a_comparable)
			a_comparable := 3
			a_comparable2 := 4
			assert ("less2", a_comparable < a_comparable2)
			assert ("not_less3", not (a_comparable2 < a_comparable))
			a_comparable := 0
			a_comparable2 := 12
			assert ("less3", a_comparable < a_comparable2)
			assert ("not_less4", not (a_comparable2 < a_comparable))
			a_comparable := 6
			a_comparable2 := 6
			assert ("not_less5", not (a_comparable < a_comparable2))
			assert ("not_less6", not (a_comparable2 < a_comparable))
		end

	test_infix_less_equal1 is
			-- Test feature `infix "<="'.
		local
			a_comparable, a_comparable2: COMPARABLE
		do
			a_comparable := clone ("foo")
			a_comparable2 := clone ("bar")
			assert ("not_less1", not (a_comparable <= a_comparable2))
			assert ("less1", a_comparable <= a_comparable)
			assert ("less2", a_comparable2 <= a_comparable)
			a_comparable := clone ("fo")
			a_comparable2 := clone ("foo")
			assert ("less3", a_comparable <= a_comparable2)
			assert ("not_less3", not (a_comparable2 <= a_comparable))
			a_comparable := clone ("")
			a_comparable2 := clone ("foo")
			assert ("less4", a_comparable <= a_comparable2)
			assert ("not_less4", not (a_comparable2 <= a_comparable))
			a_comparable := clone ("foo")
			a_comparable2 := clone ("foo")
			assert ("less5", a_comparable <= a_comparable2)
			assert ("less6", a_comparable2 <= a_comparable)
		end

	test_infix_less_equal2 is
			-- Test feature `infix "<="'.
		local
			a_comparable, a_comparable2: COMPARABLE
		do
			a_comparable := 10
			a_comparable2 := 5
			assert ("not_less1", not (a_comparable <= a_comparable2))
			assert ("less1", a_comparable <= a_comparable)
			assert ("less2", a_comparable2 <= a_comparable)
			a_comparable := 3
			a_comparable2 := 4
			assert ("less3", a_comparable <= a_comparable2)
			assert ("not_less3", not (a_comparable2 <= a_comparable))
			a_comparable := 0
			a_comparable2 := 12
			assert ("less4", a_comparable <= a_comparable2)
			assert ("not_less4", not (a_comparable2 <= a_comparable))
			a_comparable := 6
			a_comparable2 := 6
			assert ("less5", a_comparable <= a_comparable2)
			assert ("less6", a_comparable2 <= a_comparable)
		end

	test_infix_greater1 is
			-- Test feature `infix ">"'.
		local
			a_comparable, a_comparable2: COMPARABLE
		do
			a_comparable := clone ("bar")
			a_comparable2 := clone ("foo")
			assert ("not_greater1", not (a_comparable > a_comparable2))
			assert ("not_greater2", not (a_comparable > a_comparable))
			assert ("greater1", a_comparable2 > a_comparable)
			a_comparable := clone ("foo")
			a_comparable2 := clone ("fo")
			assert ("greater2", a_comparable > a_comparable2)
			assert ("not_greater3", not (a_comparable2 > a_comparable))
			a_comparable := clone ("foo")
			a_comparable2 := clone ("")
			assert ("greater3", a_comparable > a_comparable2)
			assert ("not_greater4", not (a_comparable2 > a_comparable))
			a_comparable := clone ("foo")
			a_comparable2 := clone ("foo")
			assert ("not_greater5", not (a_comparable > a_comparable2))
			assert ("not_greater6", not (a_comparable2 > a_comparable))
		end

	test_infix_greater2 is
			-- Test feature `infix ">"'.
		local
			a_comparable, a_comparable2: COMPARABLE
		do
			a_comparable := 5
			a_comparable2 := 10
			assert ("not_greater1", not (a_comparable > a_comparable2))
			assert ("not_greater2", not (a_comparable > a_comparable))
			assert ("greater1", a_comparable2 > a_comparable)
			a_comparable := 4
			a_comparable2 := 3
			assert ("greater2", a_comparable > a_comparable2)
			assert ("not_greater3", not (a_comparable2 > a_comparable))
			a_comparable := 5
			a_comparable2 := 0
			assert ("greater3", a_comparable > a_comparable2)
			assert ("not_greater4", not (a_comparable2 > a_comparable))
			a_comparable := 6
			a_comparable2 := 6
			assert ("not_greater5", not (a_comparable > a_comparable2))
			assert ("not_greater6", not (a_comparable2 > a_comparable))
		end

	test_infix_greater_equal1 is
			-- Test feature `infix ">="'.
		local
			a_comparable, a_comparable2: COMPARABLE
		do
			a_comparable := clone ("bar")
			a_comparable2 := clone ("foo")
			assert ("not_greater1", not (a_comparable >= a_comparable2))
			assert ("greater1", a_comparable >= a_comparable)
			assert ("greater2", a_comparable2 >= a_comparable)
			a_comparable := clone ("foo")
			a_comparable2 := clone ("fo")
			assert ("greater3", a_comparable >= a_comparable2)
			assert ("not_greater3", not (a_comparable2 >= a_comparable))
			a_comparable := clone ("foo")
			a_comparable2 := clone ("")
			assert ("greater4", a_comparable >= a_comparable2)
			assert ("not_greater4", not (a_comparable2 >= a_comparable))
			a_comparable := clone ("foo")
			a_comparable2 := clone ("foo")
			assert ("greater5", a_comparable >= a_comparable2)
			assert ("greater6", a_comparable2 >= a_comparable)
		end

	test_infix_greater_equal2 is
			-- Test feature `infix ">="'.
		local
			a_comparable, a_comparable2: COMPARABLE
		do
			a_comparable := 5
			a_comparable2 := 10
			assert ("not_greater1", not (a_comparable >= a_comparable2))
			assert ("greater1", a_comparable >= a_comparable)
			assert ("greater2", a_comparable2 >= a_comparable)
			a_comparable := 4
			a_comparable2 := 3
			assert ("greater3", a_comparable >= a_comparable2)
			assert ("not_greater3", not (a_comparable2 >= a_comparable))
			a_comparable := 12
			a_comparable2 := 0
			assert ("greater4", a_comparable >= a_comparable2)
			assert ("not_greater4", not (a_comparable2 >= a_comparable))
			a_comparable := 6
			a_comparable2 := 6
			assert ("greater5", a_comparable >= a_comparable2)
			assert ("greater6", a_comparable2 >= a_comparable)
		end

	test_min1 is
			-- Test feature `min'.
		local
			a_comparable, a_comparable2: COMPARABLE
		do
			a_comparable := clone ("bar")
			a_comparable2 := clone ("foo")
			assert_same ("min1", a_comparable, a_comparable.min (a_comparable2))
			assert_same ("min2", a_comparable, a_comparable.min (a_comparable))
			assert_same ("min3", a_comparable, a_comparable2.min (a_comparable))
			a_comparable := clone ("foo")
			a_comparable2 := clone ("")
			assert_same ("min4", a_comparable2, a_comparable.min (a_comparable2))
			assert_same ("min5", a_comparable2, a_comparable2.min (a_comparable))
			a_comparable := clone ("foo")
			a_comparable2 := clone ("foo")
			assert_same ("min6", a_comparable, a_comparable.min (a_comparable2))
			assert_same ("min7", a_comparable2, a_comparable2.min (a_comparable))
		end

	test_min2 is
			-- Test feature `min'.
		local
			a_comparable, a_comparable2: COMPARABLE
		do
			a_comparable := 5
			a_comparable2 := 10
			assert_same ("min1", a_comparable, a_comparable.min (a_comparable2))
			assert_same ("min2", a_comparable, a_comparable.min (a_comparable))
			assert_same ("min3", a_comparable, a_comparable2.min (a_comparable))
			a_comparable := 8
			a_comparable2 := 0
			assert_same ("min4", a_comparable2, a_comparable.min (a_comparable2))
			assert_same ("min5", a_comparable2, a_comparable2.min (a_comparable))
			a_comparable := 3
			a_comparable2 := 3
			assert_same ("min6", a_comparable, a_comparable.min (a_comparable2))
			assert_same ("min7", a_comparable2, a_comparable2.min (a_comparable))
		end

	test_max1 is
			-- Test feature `max'.
		local
			a_comparable, a_comparable2: COMPARABLE
		do
			a_comparable := clone ("foo")
			a_comparable2 := clone ("bar")
			assert_same ("max1", a_comparable, a_comparable.max (a_comparable2))
			assert_same ("max2", a_comparable, a_comparable.max (a_comparable))
			assert_same ("max3", a_comparable, a_comparable2.max (a_comparable))
			a_comparable := clone ("")
			a_comparable2 := clone ("foo")
			assert_same ("max4", a_comparable2, a_comparable.max (a_comparable2))
			assert_same ("max5", a_comparable2, a_comparable2.max (a_comparable))
			a_comparable := clone ("foo")
			a_comparable2 := clone ("foo")
			assert_same ("max6", a_comparable, a_comparable.max (a_comparable2))
			assert_same ("max7", a_comparable2, a_comparable2.max (a_comparable))
		end

	test_max2 is
			-- Test feature `max'.
		local
			a_comparable, a_comparable2: COMPARABLE
		do
			a_comparable := 10
			a_comparable2 := 5
			assert_same ("max1", a_comparable, a_comparable.max (a_comparable2))
			assert_same ("max2", a_comparable, a_comparable.max (a_comparable))
			assert_same ("max3", a_comparable, a_comparable2.max (a_comparable))
			a_comparable := 0
			a_comparable2 := 12
			assert_same ("max4", a_comparable2, a_comparable.max (a_comparable2))
			assert_same ("max5", a_comparable2, a_comparable2.max (a_comparable))
			a_comparable := 4
			a_comparable2 := 4
			assert_same ("max6", a_comparable, a_comparable.max (a_comparable2))
			assert_same ("max7", a_comparable2, a_comparable2.max (a_comparable))
		end

	test_three_way_comparison1 is
			-- Test feature `three_way_comparison'.
		local
			a_comparable, a_comparable2: COMPARABLE
		do
			a_comparable := clone ("foo")
			a_comparable2 := clone ("bar")
			assert_equal ("compare1", 1, a_comparable.three_way_comparison (a_comparable2))
			assert_equal ("compare2", 0, a_comparable.three_way_comparison (a_comparable))
			assert_equal ("compare3", -1, a_comparable2.three_way_comparison (a_comparable))
			a_comparable := clone ("")
			a_comparable2 := clone ("foo")
			assert_equal ("compare4", -1, a_comparable.three_way_comparison (a_comparable2))
			assert_equal ("compare5", 1, a_comparable2.three_way_comparison (a_comparable))
			a_comparable := clone ("foo")
			a_comparable2 := clone ("foo")
			assert_equal ("compare6", 0, a_comparable.three_way_comparison (a_comparable2))
			assert_equal ("compare7", 0, a_comparable2.three_way_comparison (a_comparable))
		end

	test_three_way_comparison2 is
			-- Test feature `three_way_comparison'.
		local
			a_comparable, a_comparable2: COMPARABLE
		do
			a_comparable := 10
			a_comparable2 := 5
			assert_equal ("compare1", 1, a_comparable.three_way_comparison (a_comparable2))
			assert_equal ("compare2", 0, a_comparable.three_way_comparison (a_comparable))
			assert_equal ("compare3", -1, a_comparable2.three_way_comparison (a_comparable))
			a_comparable := 0
			a_comparable2 := 4
			assert_equal ("compare4", -1, a_comparable.three_way_comparison (a_comparable2))
			assert_equal ("compare5", 1, a_comparable2.three_way_comparison (a_comparable))
			a_comparable := 7
			a_comparable2 := 7
			assert_equal ("compare6", 0, a_comparable.three_way_comparison (a_comparable2))
			assert_equal ("compare7", 0, a_comparable2.three_way_comparison (a_comparable))
		end

end -- class KS_TEST_COMPARABLE
