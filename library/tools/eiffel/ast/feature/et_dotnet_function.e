indexing

	description:

		"Functions implemented in .NET"

	library: "Gobo Eiffel Tools Library"
	copyright: "Copyright (c) 2006, Eric Bezault and others"
	license: "Eiffel Forum License v2 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

class ET_DOTNET_FUNCTION

inherit

	ET_FUNCTION
		undefine
			is_frozen, is_dotnet,
			is_deferred
		redefine
			make
		end

	ET_DOTNET_QUERY
		undefine
			arguments,
			preconditions,
			postconditions,
			reset_preconditions,
			reset_postconditions,
			obsolete_message,
			is_function,
			is_prefixable, is_infixable,
			is_bracketable, undefined_feature,
			resolve_inherited_signature,
			is_deferred
		end

	ET_DOTNET_ROUTINE
		undefine
			type, is_prefixable, is_infixable,
			is_bracketable, is_function
		end

create

	make

feature {NONE} -- Initialization

	make (a_name: like extended_name; args: like arguments; a_type: like declared_type; a_class: like implementation_class) is
			-- Create a new .NET function.
		do
			precursor (a_name, args, a_type, a_class)
			dotnet_name := name.name
			overloaded_name := name.name
		ensure then
			dotnet_name_set: dotnet_name.same_string (name.name)
			overloaded_name_set: overloaded_name.same_string (name.name)
		end

feature -- Duplication

	new_synonym (a_name: like extended_name): like Current is
			-- Synonym feature
		do
			create Result.make (a_name, arguments, declared_type, implementation_class)
			Result.set_clients (clients)
			Result.set_is_keyword (is_keyword)
			Result.set_end_keyword (end_keyword)
			Result.set_semicolon (semicolon)
			Result.set_feature_clause (feature_clause)
			Result.set_first_indexing (first_indexing)
			Result.set_synonym (Current)
		end

feature -- Conversion

	renamed_feature (a_name: like extended_name): like Current is
			-- Renamed version of current feature
		do
			create Result.make (a_name, arguments, declared_type, implementation_class)
			Result.set_clients (clients)
			Result.set_implementation_feature (implementation_feature)
			Result.set_first_precursor (first_precursor)
			Result.set_other_precursors (other_precursors)
			Result.set_is_keyword (is_keyword)
			Result.set_end_keyword (end_keyword)
			Result.set_version (version)
			Result.set_frozen_keyword (frozen_keyword)
			Result.set_semicolon (semicolon)
			Result.set_feature_clause (feature_clause)
			Result.set_first_indexing (first_indexing)
			Result.set_first_seed (first_seed)
			Result.set_other_seeds (other_seeds)
		end

feature -- Processing

	process (a_processor: ET_AST_PROCESSOR) is
			-- Process current node.
		do
			a_processor.process_dotnet_function (Current)
		end

end
