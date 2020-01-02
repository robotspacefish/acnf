require 'bundler'
Bundler.require
require 'pry'
require 'colorize'
require 'nokogiri'
require 'open-uri'

DB = {
  :connection => SQLite3::Database.new("db/creatures.sqlite")
}
binding.pry
require './lib/creature'
require_all 'lib'
