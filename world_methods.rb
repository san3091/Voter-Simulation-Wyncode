module WorldMethods

	def clear_screen
		system("clear")
	end

	def end_task_message
		puts "Press any key to return to main menu"
		gets
	end

	def main_action(action)
		case action
		when "c"
			create
		when "l"
			list
		when "u"
			update
		when "d"
			delete
		else
			error
		end
	end

	def create_person person
		case person
		when "v"
			voter = Voter.new
			@voters << voter
		when "p"
			politician = Politician.new
			@politicians << politician
		else
			error
			create
		end
	end

	def list_politicians
		puts "\nPoliticians:"
		@politicians.each do |politician|
			puts politician.return_info(politician.name, politician.party)
			puts "\n"
		end
	end

	def list_voters
		puts "\nVoters:"
		@voters.each do |voter|
			puts voter.return_info(voter.name, voter.politics)
			puts "\n"
		end
	end

	def find_person name
		people = @politicians + @voters
		people.select! { |person| person.name == name }
		people[0]
	end

	def update_person person
		if person.class == Politician
			person.update
		elsif person.class == Voter
			person.update
		end
	end

	def delete_person person
		if person.class == Politician
			puts "Deleted #{person.name}"
			@politicians.delete(person)
		elsif person.class == Voter
			puts "Deleted #{person.name}"
			@voters.delete(person)
		end
	end

end