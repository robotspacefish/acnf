require_relative './config/environment'

def reload!
  load_all './lib'
end

task :console do
  Pry.start
end

task :scrape_creatures do
  base_path = "https://animalcrossing.fandom.com/wiki/"
  bug_scraper  = CreatureScraper.scrape("#{base_path}Bugs_(New_Leaf)", :bug)
  fish_scraper = CreatureScraper.scrape("#{base_path}Fish_(New_Leaf)", :fish)
  deep_sea_scraper = CreatureScraper.scrape("#{base_path}Deep-sea_creatures", :deep_sea)
end