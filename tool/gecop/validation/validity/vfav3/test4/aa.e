class AA

inherit

	BB

create

	make
	
feature

	make
		local
			b: BOOLEAN
		do
			f (1)
			b := g ("gobo")
		end
		
	f alias "()" (i: INTEGER)
		do
		end

end
