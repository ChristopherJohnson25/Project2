require_relative "../config"

class CreateUsers < ActiveRecord::Migration

	def up
		puts "apply"
		create_table :users do |t|
			t.string(:password_digest)
			t.string(:user_name)
			t.string(:avatar_url)
			t.string(:location)
			t.datetime(:join_date)
		end
	end

	def down
		puts "delete"
		drop_table :users
	end
end