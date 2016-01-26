module VoterQuestions
	def name
		"What is the voter's full name?"
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

	def info name, politics
		"#{@name}\nPolitics: #{@politics}\n"
	end

	def political_affiliation
		"\nWhat is their political affiliation?\n\n(L)iberal\n(C)onservative\n(T)ea Party\n(S)ocialist\n(N)eutral"
	end

	def get_answer
		gets.chomp.downcase.strip
	end

	def get_politics
		gets.chomp.downcase.strip.to_sym
	end

	def set_politics politics
		unless @affiliations.include?politics
			error
			politics = gets.chomp.downcase.to_sym
			create
		end
		@politics = @affiliations[politics]
	end

	def update_options
		"\nWould you like to update the (N)ame or the (P)olitics?"
	end

	def update_voter update
		case update
		when "n"
			puts "\nWhat would you like to update it to?"
			@name = gets.chomp.downcase
		when "p"
			puts "\nWhat is their political affiliation?\n\n(L)iberal\n(C)onservative\n(T)ea Party\n(S)ocialist\n(N)eutral"
			party = gets.chomp.downcase
			if party == "d" || party == "r"
				party == "d" ? @party = "Democrat" : @party = "Republican"
			else 
				error
				update
			end
		else
			error
			update
		end
	end
end