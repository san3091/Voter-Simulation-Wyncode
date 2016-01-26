require './politician_questions.rb'

class Politician
	attr_reader :name, :party
	@politicians = Array.new

	def initialize
		create
	end

	include PoliticianQuestions

	def create
		ask name
		@name = get_answer
		ask party_affiliation
		party = get_answer
		set_party(party)
		write "\nAdded politician:"
		write info(@name, @politics)
	end

	def update
		write update_options
		update = get_answer
		update_info(update)
	end

end