require 'bundler'
Bundler.require
require 'pry'
require 'nokogiri'
require 'open-uri'

ActiveRecord::Base.establish_connection({
  :adapter => 'sqlite3',
  :database => 'db/development.sqlite3'
})

# require './lib/creature'
require_all 'lib'
