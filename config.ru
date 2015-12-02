require "pry"
require "sinatra"

require_relative "database/config"
require_relative "server"

run App::Server