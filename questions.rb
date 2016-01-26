module Questions

	def get_answer
		gets.chomp.downcase.strip
	end

	def refresh
		system("clear")
	end

	def write statement
		puts statement
	end

	def main_options
		"Welcome to VoterSim\nMain menu:\n\n(C)reate a profile\n(L)ist existing entries\n(U)pdate an entry\n(D)elete an entry\n"
	end

	def create_options
		"Would you like to create a:\n\n(P)olitician or a\n(V)oter\n"
	end

	def error
		puts "Invalid option"
	end

	def update_options
		puts "\nWho would you like to update?\n"
	end

	def delete_options
		puts "\nWho would you like to delete?\n"
	end
end