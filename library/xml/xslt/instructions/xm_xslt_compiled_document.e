indexing

	description:

		"Objects that represent the document node of a temporary tree"

	library: "Gobo Eiffel XSLT Library"
	copyright: "Copyright (c) 2004, Colin Adams and others"
	license: "Eiffel Forum License v2 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

class XM_XSLT_COMPILED_DOCUMENT

inherit

	XM_XSLT_INSTRUCTION
		redefine
			promote_instruction, evaluate_item, item_type, sub_expressions,
			creates_new_nodes, compute_cardinality
		end

	XM_XSLT_VALIDATION

	XM_XPATH_SHARED_NODE_KIND_TESTS

creation

	make

feature {NONE} -- Initialization

	make (an_executable: XM_XSLT_EXECUTABLE; text_only: BOOLEAN;  a_constant_text: STRING; a_base_uri: STRING; a_content: XM_XPATH_EXPRESSION) is
			-- Establish invariant.
		require
			executable_not_void: an_executable /= Void
			base_uri: a_base_uri /= Void
			content_not_void: not text_only implies a_content /= Void and then a_constant_text = Void
		do
			executable := an_executable
			instruction_name := "xsl:document"
			is_text_only := text_only
			constant_text := a_constant_text
			base_uri := a_base_uri
			content := a_content
			adopt_child_expression (content)
			compute_static_properties
			initialize
		ensure
			executable_set: executable = an_executable
			is_text_only: is_text_only = text_only
			constant_text_set: constant_text = a_constant_text
			base_uri_set: base_uri = a_base_uri
			content_set: content = a_content
		end

feature -- Access
	
	instruction_name: STRING
			-- Name of instruction, for diagnostics
	
	item_type: XM_XPATH_ITEM_TYPE is
			-- Data type of the expression, when known
		do
			Result := document_node_kind_test
		end

	sub_expressions: DS_ARRAYED_LIST [XM_XPATH_EXPRESSION] is
			-- Immediate sub-expressions of `Current'
		do
			create Result.make (1)
			Result.set_equality_tester (expression_tester)
			Result.put (content, 1)
		end

feature -- Status report

	is_text_only: BOOLEAN
			-- Is content only constant text?

	creates_new_nodes: BOOLEAN is
			-- Can `Current' create new nodes?
		do
			Result := True
		end

	display (a_level: INTEGER) is
			-- Diagnostic print of expression structure to `std.error'
		local
			a_string: STRING
		do
			a_string := STRING_.appended_string (indentation (a_level), "document-constructor")
			std.error.put_string (a_string)
			std.error.put_new_line
			todo ("display", True)
			--if children.count = 0 then
			--	a_string := STRING_.appended_string (indentation (a_level + 1), "empty content")
			--	std.error.put_string (a_string)
			--	std.error.put_new_line
			--else
			--	display_children (a_level + 1)
			--end
		end
	
feature -- Optimization

	simplify is
			-- Perform context-independent static optimizations.
		do
			content.simplify
			if content.was_expression_replaced then
				content := content.replacement_expression
				adopt_child_expression (content)
			end
		end

	analyze (a_context: XM_XPATH_STATIC_CONTEXT) is
			-- Perform static analysis of `Current' and its subexpressions.
		do
			content.analyze (a_context)
			if content.was_expression_replaced then
				content := content.replacement_expression
				adopt_child_expression (content)
			end
		end

	promote_instruction (an_offer: XM_XPATH_PROMOTION_OFFER) is
			-- Promote this instruction.
		do
			content.promote (an_offer)
			if content.was_expression_replaced then
				content := content.replacement_expression
				adopt_child_expression (content)
			end
		end

feature -- Evaluation

	evaluate_item (a_context: XM_XPATH_CONTEXT) is
			-- Evaluate as a single item.
		local
			a_text_value: STRING
			a_builder: XM_XPATH_TREE_BUILDER
			a_node_factory: XM_XPATH_NODE_FACTORY
			a_result: XM_XSLT_TRANSFORMATION_RESULT
			an_iterator: XM_XPATH_SEQUENCE_ITERATOR [XM_XPATH_ITEM]
			a_new_context: XM_XSLT_EVALUATION_CONTEXT
			a_receiver: XM_XPATH_RECEIVER
		do
			if is_text_only then
				if constant_text /= Void then
					a_text_value := constant_text
				else
					a_text_value := ""
					from
						content.create_iterator (a_context)
						an_iterator := content.last_iterator; an_iterator.start
					until
						an_iterator.after
					loop
						a_text_value := STRING_.appended_string (a_text_value, an_iterator.item.string_value)
						an_iterator.forth
					end
				end
				create {XM_XPATH_TEXT_FRAGMENT_VALUE} last_evaluated_item.make (a_text_value, base_uri)
			else
				a_new_context ?= a_context.new_minor_context
				create a_node_factory
				create a_builder.make (a_node_factory)
				a_builder.set_system_id (base_uri)
				create a_result.make_receiver (a_builder)
				a_new_context.change_output_destination (Void, a_result, False, Validation_strip, Void)
				a_receiver := a_new_context.current_receiver
				if not a_receiver.is_document_started then a_receiver.start_document end
				content.process (a_new_context)
				a_receiver.end_document
				if a_builder.has_error then
					create {XM_XPATH_INVALID_ITEM} last_evaluated_item.make_from_string (a_builder.last_error, Xpath_errors_uri, "FOER0000", Dynamic_error)
					set_last_error (last_evaluated_item.error_value)
				else
					last_evaluated_item := a_builder.document
				end
			end
		end

	process_leaving_tail (a_context: XM_XSLT_EVALUATION_CONTEXT) is
			-- Execute `Current', writing results to the current `XM_XPATH_RECEIVER'.
		do
			evaluate_item (a_context)
			if last_evaluated_item /= Void then
				a_context.current_receiver.append_item (last_evaluated_item)
			end
			last_tail_call := Void			
		end

feature {XM_XSLT_EXPRESSION} -- Restricted

	compute_cardinality is
			-- Compute cardinality.
		do
			set_cardinality_exactly_one
		end

feature {NONE} -- Implementation

	content: XM_XPATH_EXPRESSION
			-- Content (unless `is_text_only')

	constant_text: STRING
			-- Constant text content

	base_uri: STRING
			-- Base URI

invariant

	base_uri: base_uri /= Void
	content_not_void: content /= Void

end

