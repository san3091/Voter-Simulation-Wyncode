require './voter.rb'
require './politician.rb'
require './questions.rb'
require './world_methods.rb'


class World
	def initialize
		@politicians = Array.new
		@voters = Array.new
		main_menu
	end

	include Questions
	include WorldMethods

	def main_menu
		clear_screen
		write main_options
		answer = get_answer
		main_action answer
	end

	def create
		write create_options
		answer = get_answer
		create_person answer
		end_task_message
		main_menu
	end

	def list
		list_politicians
		list_voters
		end_task_message
		main_menu
	end

	def update
		write update_options
		name = get_answer
		person = find_person name
		update_person person
		end_task_message
		main_menu
	end

	def delete
		write delete_options
		name = get_answer
		person = find_person name
		delete_person person
		end_task_message
		main_menu
	end
end

World.new