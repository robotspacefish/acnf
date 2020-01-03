class Creature
  attr_accessor :name, :url, :image, :price, :location, :time, :months, :start_time, :end_time

  def self.create_from_hash(creature_hash)
    self.new_from_hash(creature_hash).save
  end

  def self.new_from_hash(creature_hash)
    self.new(creature_hash)
  end

  def save
  end

  def insert
    table_name = nil
    if self.class == "DeepSea"
      table_name = "deep_seas"
    else
      table_name = self.class.to_s.downcase + "s"
    end

    sql = <<-SQL
      INSERT INTO bugs (name, url, image, price, location, time, start_time, end_time) VALUES (?,?, ?, ?, ?, ?, ?, ?)
    SQL

    DB[:connection].execute(sql, self.name, self.url, self.image, self.price, self.location, self.time, self.start_time, self.end_time)
  end

  def time=(time)
    times = []
    if time == "All day"
      times = [0, 23]
    else
      times = time.split(" - ").collect do |t|
      hour, meridiem = t.split(" ")
      if meridiem == "PM"
        hour = hour.to_i + 12
      end
      hour.to_s
    end
    end

    @start_time = times.first
    @end_time = times.last
    @time = time
  end

  def year=(months)
    # TODO year instance
  end

  def self.create_table(type)
    #todo months
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS #{type}s (
       id INTEGER PRIMARY KEY AUTOINCREMENT,
       name TEXT,
       url TEXT,
       image TEXT,
       price TEXT,
       location TEXT,
       time TEXT,
       start_time TEXT,
       end_time TEXT
      )
    SQL

    DB[:connection].execute(sql)
  end
end