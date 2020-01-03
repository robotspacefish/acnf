ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require 'pry'
require 'nokogiri'
require 'open-uri'

configure :development do
  set :database, 'sqlite3:db/database.db'
end

require './app'
require_all './models'
