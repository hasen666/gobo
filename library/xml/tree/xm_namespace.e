indexing

	description:

		"XML namespace declarations"

	library: "Gobo Eiffel XML Library"
	copyright: "Copyright (c) 2001, Andreas Leitner and others"
	license: "Eiffel Forum License v2 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"

class XM_NAMESPACE

inherit

	HASHABLE
		redefine
			out,
			is_equal
		end
		
	KL_IMPORTED_STRING_ROUTINES
		export
			{NONE} all
		undefine
			out, 
			is_equal
		end
		
creation

	make,
	make_default

feature {NONE} -- Initialization

	make (a_prefix: like ns_prefix; a_uri: like uri) is
			-- Create a new namespace declaration.
		require
			valid: not (a_uri = Void and a_prefix = Void)
		do
			ns_prefix := a_prefix
			uri := a_uri
		ensure
			ns_prefix_set: ns_prefix = a_prefix
			uri_set: uri = a_uri
		end

	make_default is
			-- Make default namespace (empty URI)
		do
			make (STRING_.make_empty, STRING_.make_empty)
		ensure
			no_prefix: not has_prefix
			default_namespace: is_default_namespace
		end
		
feature -- Access

	ns_prefix: STRING
			-- Prefix of current namespace

	uri: STRING
			-- Namespace URI

feature -- Status report

	is_equal (other: like Current): BOOLEAN is
			-- Are the two namespaces equal?
		do
			Result := (uri = other.uri) or else 
				(uri /= Void and then STRING_.same_string (uri, other.uri))
		ensure then
			definition: Result implies (uri = other.uri or else STRING_.same_string (uri, other.uri))
		end
		
	hash_code: INTEGER is
			-- Hash code of URI.
		do
			if uri /= Void then
				Result := uri.hash_code
			end
		end
		
	out: STRING is
			-- Out.
		do
			if uri = Void then
				Result := ""
			else
				Result := uri
			end
		end
		 
feature -- Status report

	same_prefix (other: XM_NAMESPACE): BOOLEAN is
			-- Same
		do
			Result := is_equal (other) and then
				((ns_prefix = other.ns_prefix) or else
					((ns_prefix /= Void and other.ns_prefix /= Void) and then STRING_.same_string (ns_prefix, other.ns_prefix)))
		ensure
			equal: Result implies is_equal (other)
			same_prefix: Result implies 
				(ns_prefix = other.ns_prefix or else STRING_.same_string (ns_prefix, other.ns_prefix))
		end
		
	is_default: BOOLEAN is
			-- `is_default_declaration'.
		obsolete
			"use clearer `not has_prefix'"
		do
			Result := not has_prefix
		end
		
	has_prefix: BOOLEAN is
			-- Is there an explicit prefix?
			-- (not a default namespace declaration)
		do
			Result := (ns_prefix /= Void and then ns_prefix.count >= 0)
		ensure
			definition: Result = (ns_prefix /= Void and then ns_prefix.count >= 0)
		end
		
	is_default_namespace: BOOLEAN is
			-- Is `Current' the default namespace (empty URI).
		do
			Result := (uri = Void or else uri.count = 0)
		ensure
			definition: Result = (uri = Void or else uri.count = 0)
		end

invariant

	valid: not (uri = Void and ns_prefix = Void)

end
