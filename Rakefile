require_relative './config/environment'
require 'sinatra/activerecord/rake'

def reload!
  load_all './lib'
end

task :console do
  Pry.start
end

task :scrape_creatures do
  base_path = "https://animalcrossing.fandom.com/wiki/"
  CreatureScraper.new("#{base_path}Bugs_(New_Leaf)", :bug).call
  CreatureScraper.new("#{base_path}Fish_(New_Leaf)", :fish).call
  CreatureScraper.new("#{base_path}Deep-sea_creatures", :deep_sea).call
end