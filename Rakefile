require_relative './config/environment'

def reload!
  load_all './lib'
end

task :console do
  Pry.start
end

task :scrape_creatures do
  base_path = "https://animalcrossing.fandom.com/wiki/"
  bug_scraper = CreatureScraper.new("#{base_path}Bugs_(New_Leaf)", :bug)
  bug_scraper.call
  fish_scraper = CreatureScraper.new("#{base_path}Fish_(New_Leaf)", :fish)
  fish_scraper.call
  deep_sea_scraper = CreatureScraper.new("#{base_path}Deep-sea_creatures", :deep_sea)
  deep_sea_scraper.call
end

task :create_tables do
  Creature.create_table("bug")
  Creature.create_table("fish")
  Creature.create_table("deep_sea")
end