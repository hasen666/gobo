indexing

	description:

		"Eiffel feature set export clauses"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2002, Eric Bezault and others"
	license: "Eiffel Forum License v1 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

class ET_FEATURE_EXPORT

inherit

	ET_EXPORT

	ET_FEATURE_NAME_LIST
		rename
			make as make_feature_name_list,
			make_with_capacity as make_feature_name_list_with_capacity
		end

creation

	make, make_with_capacity

feature {NONE} -- Initialization

	make (a_clients_clause: like clients_clause) is
			-- Create a new feature set export clause.
		require
			a_clients_clause_not_void: a_clients_clause /= Void
		do
			clients_clause := a_clients_clause
			make_feature_name_list
		ensure
			clients_clause_set: clients_clause = a_clients_clause
			is_empty: is_empty
			capacity_set: capacity = 0
		end

	make_with_capacity (a_clients_clause: like clients_clause; nb: INTEGER) is
			-- Create a new feature set export clause with capacity `nb'.
		require
			a_clients_clause_not_void: a_clients_clause /= Void
			nb_positive: nb >= 0
		do
			clients_clause := a_clients_clause
			make_feature_name_list_with_capacity (nb)
		ensure
			clients_clause_set: clients_clause = a_clients_clause
			is_empty: is_empty
			capacity_set: capacity = nb
		end

feature -- Access

	clients (a_name: ET_FEATURE_NAME): ET_CLIENTS is
			-- Clients for feature `a_name'
		do
			Result := clients_clause
		end

	clients_clause: ET_CLIENTS
			-- Clients clause

	position: ET_POSITION is
			-- Position of first character of
			-- current node in source code
		do
			Result := clients_clause.position
		end

	break: ET_BREAK is
			-- Break which appears just after current node
		do
			if is_empty then
				Result := clients_clause.break
			else
				Result := item (count).break
			end
		end

feature -- Setting

	set_clients_clause (a_clients_clause: like clients_clause) is
			-- Set `clients_clause' to `a_clients_clause'.
		require
			a_clients_clause_not_void: a_clients_clause /= Void
		do
			clients_clause := a_clients_clause
		ensure
			clients_clause_set: clients_clause = a_clients_clause
		end

invariant

	clients_clause_not_void: clients_clause /= Void

end
