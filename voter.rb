class Voter
	attr_reader :name, :politics
	@@voters = Array.new

	def initialize
		@affiliations = {
		l: "Liberal",
		c: "Conservative",
		t: "Tea Party",
		s: "Socialist",
		n: "Neutral"
	}
	create
	end

	def create
		ask name
		name = get_answer
		@name = name
		ask political_affiliation
		politics = get_politics
		set_politics politics
		write "\nAdded voter:"
		write info(@name, @politics)
	end

	def update
		write update_options
		update = get_answer
		update_voter update
	end

end