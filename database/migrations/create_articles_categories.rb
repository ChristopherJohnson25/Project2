require_relative "../config"

class CreateArticlesCategories < ActiveRecord::Migration

	def up
		puts "apply"
		create_table :articles_categories do |t|
			t.references(:category)
			t.references(:article)
		end
	end

	def down
		puts "delete"
		drop_table :articles_categories
	end
end