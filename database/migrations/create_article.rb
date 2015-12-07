require_relative "../config"

class CreateArticles < ActiveRecord::Migration

	def up
		puts "apply"
		create_table :articles do |t|
			t.string(:post)
			t.string(:img_url)
			t.datetime(:post_date)
			t.string(:subject)
			t.references(:user)
		end
	end

	def down
		puts "delete"
		drop_table :articles
	end
end