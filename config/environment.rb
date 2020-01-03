require 'bundler'
Bundler.require
require 'pry'
require 'nokogiri'
require 'open-uri'

DB = {
  :connection => SQLite3::Database.new("db/creatures.sqlite")
}

require './lib/creature'
require_all 'lib'
