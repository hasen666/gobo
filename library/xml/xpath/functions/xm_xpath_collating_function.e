indexing

	description:

		"Objects that support XPath functions which take a collator as an argument"

	library: "Gobo Eiffel XPath Library"
	copyright: "Copyright (c) 2004, Colin Adams and others"
	license: "Eiffel Forum License v2 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

deferred class	XM_XPATH_COLLATING_FUNCTION

inherit

	XM_XPATH_SYSTEM_FUNCTION
		undefine
			evaluate_item
		redefine
			pre_evaluate, analyze
		end

feature -- Access

	default_collation_name: STRING
			-- Default_collation_name

	collator (an_argument_number: INTEGER; a_context: XM_XPATH_CONTEXT; use_default_collator: BOOLEAN): ST_COLLATOR is
			-- Collator to be used
		require
			context_not_void: a_context /= Void
			default_collation_name_not_void: default_collation_name /= Void
		local
			an_atomic_value: XM_XPATH_ATOMIC_VALUE
			a_string_value: XM_XPATH_STRING_VALUE
			a_collation_name: STRING
		do
			if arguments.count >= an_argument_number then
				arguments.item (an_argument_number).evaluate_item (a_context)
				an_atomic_value ?= arguments.item (an_argument_number).last_evaluated_item
				check
					atomic_value: an_atomic_value /= Void
					-- it's statically typed as a string
				end
				a_string_value ?= an_atomic_value.primitive_value
				check
					string_value: a_string_value /= Void
					-- it's statically typed as a string
				end
				a_collation_name := a_string_value.string_value
				if a_context.is_known_collation (a_collation_name) then
					Result := a_context.collator (a_collation_name)
					-- otherwise `Result' = `Void' and a FOCH0002 error will be reported by the caller 
				end
			elseif use_default_collator then
				Result := a_context.collator (default_collation_name)
			else

				-- We use the Unicode codepoint collator

				Result := a_context.unicode_codepoint_collator
			end
		ensure
			Maybe_unsupported_collation: True
		end

	atomic_comparer (an_argument_number: INTEGER; a_context: XM_XPATH_CONTEXT): XM_XPATH_ATOMIC_COMPARER is
			-- Atomic comparer to be used
		require
			context_not_void: a_context /= Void
			default_collation_name_not_void: default_collation_name /= Void
		local
			a_collator: ST_COLLATOR
		do
			a_collator := collator (an_argument_number, a_context, True)
			if a_collator /= Void then
				create Result.make (a_collator)
			end
		ensure
			Maybe_unsupported_collation: True
		end

	atomic_sort_comparer (an_argument_number: INTEGER; a_context: XM_XPATH_CONTEXT): XM_XPATH_ATOMIC_SORT_COMPARER is
			-- Atomic sort comparer to be used
		require
			context_not_void: a_context /= Void
			default_collation_name_not_void: default_collation_name /= Void
		local
			a_collator: ST_COLLATOR
		do
			a_collator := collator (an_argument_number, a_context, True)
			if a_collator /= Void then
				create Result.make (a_collator)
			end
		ensure
			Maybe_unsupported_collation: True
		end

feature -- Optimization
	
	analyze (a_context: XM_XPATH_STATIC_CONTEXT) is
		do
			Precursor (a_context)
			default_collation_name := a_context.default_collation_name
		ensure then
			default_collation_name_not_void: default_collation_name /= Void
			default_collation_name_set: default_collation_name = a_context.default_collation_name
		end

feature -- Evaluation

	-- Since collations aren't avaialble statically: (maybe we can change this?)

	pre_evaluate (a_context: XM_XPATH_STATIC_CONTEXT) is
			-- Pre-evaluate `Current' at compile time.
		do
			set_replacement (Current)
		end

end
	
