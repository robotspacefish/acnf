class CreatureScraper

  def initialize(path)
    @doc = Nokogiri::HTML(open(path))
  end

  def call
    rows.each do |row_doc|
      scrape_row(row_doc)
    end
  end

  private
    def rows
      table = @doc.css("table.sortable")
      @rows ||= table.css("tr").collect { |row| row.css("td") }.filter { |array| !array.empty? }
    end

    def scrape_row(row)
      {
        :name => row[0].text.lstrip.gsub("\n", ""),
        :url => row[0].css("a").attribute("href").value,
        :image => row[1].css("img").attribute("src").value,
        :price => row[2].text.lstrip.gsub("\n", ""),
        :location => row[3].text.lstrip.gsub("\n", ""),
        :time => row[4].text.lstrip.gsub("\n", ""),
        :months => {
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
      }
    end
end