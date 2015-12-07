require "pry"
require("bcrypt")
require "sinatra"
require "redcarpet"

require_relative "database/config"
require_relative "server"

run App::Server