indexing

	description:

		"Partial order comparators"

	library: "Gobo Eiffel Structure Library"
	copyright: "Copyright (c) 2001, Eric Bezault and others"
	license: "Eiffel Forum License v1 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

deferred class DS_PART_COMPARATOR [G]

feature -- Status report

	less_than (u, v: G): BOOLEAN is
			-- Is `u' considered less than `v'?
		require
			u_not_void: u /= Void
			v_not_void: v /= Void
		deferred
		ensure
			asymmetric: Result implies not less_than (v, u)
		end

	greater_than (u, v: G): BOOLEAN is
			-- Is `u' considered greater than `v'?
		require
			u_not_void: u /= Void
			v_not_void: v /= Void
		do
			Result := less_than (v, u)
		ensure
			definition: Result = less_than (v, u)
		end

end
