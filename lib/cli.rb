class CLI
  def initialize
    scrape_creatures
  end

  def scrape_creatures
    base_path = "https://animalcrossing.fandom.com/wiki/"
    Scraper.scrape("#{base_path}Bugs_(New_Leaf)", :bug)
    Scraper.scrape("#{base_path}Fish_(New_Leaf)", :fish)
    Scraper.scrape("#{base_path}Deep-sea_creatures", :deep_sea)
  end

  def call
  end
end