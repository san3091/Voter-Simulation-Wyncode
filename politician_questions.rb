module PoliticianQuestions
	def name
		"What is the politician's full name?"
	end

	def error
		puts "Invalid option"
	end

	def ask statement
		puts statement
	end

	def write statement
		puts statement
	end

	def party_affiliation
		"\nWhat is their party affiliation?\n(D)emocrat\n(R)epublican\n"
	end

	def get_answer
		gets.chomp.downcase.strip
	end

	def set_party(party)
		unless party == "d" || party == "r"
			error
			party = get_answer
			create
		end
		@party = party == "d" ? "Democrat" : "Republican"
	end

	def info(name, party)
		"#{@name}\nParty: #{@party}\n"
	end

	def update_options
		"\nWould you like to update the (N)ame or the (P)arty?"
	end

	def update_info(update)
		case update
		when "n"
			puts "\nWhat would you like to update it to?"
			@name = gets.chomp.downcase
		when "p"
			puts "\nIs #{@name} a (D)emoctrat or a (R)epublican?"
			party = gets.chomp.downcase
			if party == "d" || party == "r"
				party == "d" ? @party = "Democrat" : @party = "Republican"
			else 
				puts "\nInvalid option"
				update
			end
		else
			puts "\nInvalid option"
			update
		end
	end
end