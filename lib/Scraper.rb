class Scraper
  def self.scrape(path, type)
    doc = Nokogiri::HTML(open(path))

    table = doc.css("table.sortable")
    rows = table.css("tr")
    labels = rows.collect { |row| row.css("th").text.gsub(" ", "") }.first.split("\n")
    content = rows.collect { |row| row.css( "td") }.filter { |array| !array.empty? }

    creatures = content.collect do |row|
      creature = {}
      # creatures[labels[index]] = col.text.lstrip!.gsub("\n", "")
      creature[:name] = row[0].text.lstrip.gsub("\n", "")
      creature[:url] = row[0].css("a").attribute("href").value
      creature[:image] = row[1].css("img").attribute("src").value
      creature[:price] = row[2].text.lstrip.gsub("\n", "")
      creature[:location] = row[3].text.lstrip.gsub("\n", "")
      creature[:time] = row[4].text.lstrip.gsub("\n", "")
      creature[:months] = {
        january: row[5].text.lstrip.gsub("\n", "") == "-" ? false : true,
        february: row[6].text.lstrip.gsub("\n", "") == "-" ? false : true,
        march: row[7].text.lstrip.gsub("\n", "") == "-" ? false : true,
        april: row[8].text.lstrip.gsub("\n", "") == "-" ? false : true,
        may: row[9].text.lstrip.gsub("\n", "") == "-" ? false : true,
        june: row[10].text.lstrip.gsub("\n", "") == "-" ? false : true,
        july: row[11].text.lstrip.gsub("\n", "") == "-" ? false : true,
        august: row[12].text.lstrip.gsub("\n", "") == "-" ? false : true,
        september: row[13].text.lstrip.gsub("\n", "") == "-" ? false : true,
        october: row[14].text.lstrip.gsub("\n", "") == "-" ? false : true,
        november: row[15].text.lstrip.gsub("\n", "") == "-" ? false : true,
        december: row[16].text.lstrip.gsub("\n", "") == "-" ? false : true
      }

      creature
      case type
      when :bug
        Bug.create(creature)
      when :fish
        Fish.create(creature)
      when :deep_sea
        DeepSea.create(creature)
      end
    end
  end
end