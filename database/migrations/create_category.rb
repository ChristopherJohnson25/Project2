require_relative "../config"

class CreateCategories < ActiveRecord::Migration

	def up
		puts "apply"
		create_table :categories do |t|
			t.string(:name)
		end
	end

	def down
		puts "delete"
		drop_table :categories
	end
end