require 'bundler'
Bundler.require
require 'pry'
require 'nokogiri'
require 'open-uri'

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)

# require './lib/creature'
require_all 'lib'
