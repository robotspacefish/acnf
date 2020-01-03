require 'bundler'
Bundler.require
require 'pry'
require 'nokogiri'
require 'open-uri'

ActiveRecord::Base.establish_connection({
  :adapter => 'sqlite3',
  :database => 'db/ac_new_leaf.sqlite3'
})

# require './lib/creature'
require_all 'lib'
