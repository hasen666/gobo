/*
	description:

		"C functions used to implement class STORABLE"

	system: "Gobo Eiffel Compiler"
	copyright: "Copyright (c) 2006, Eric Bezault and others"
	license: "Eiffel Forum License v2 (see forum.txt)"
	date: "$Date$"
	revision: "$Revision$"
*/

#ifndef EIF_RETRIEVE_H
#define EIF_RETRIEVE_H

extern char* eretrieve(EIF_INTEGER file_desc);
extern void eif_set_discard_pointer_values(EIF_BOOLEAN state);
extern EIF_REFERENCE stream_eretrieve(EIF_POINTER* buffer, EIF_INTEGER size, EIF_INTEGER start_pos, EIF_INTEGER* real_size);
extern void set_mismatch_information_access(EIF_OBJECT object, EIF_PROCEDURE init, EIF_PROCEDURE add);

#endif