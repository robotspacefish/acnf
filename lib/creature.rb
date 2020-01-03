class Creature
  attr_accessor :name, :url, :image, :price, :location, :time, :months, :start_time, :end_time

  def self.create_from_hash(creature_hash)
    self.new_from_hash(creature_hash).save
  end

  def self.new_from_hash(creature_hash)
    self.new(creature_hash)
  end

  def save
    self.insert
  end

  def insert
    table_name = nil
    if self.class == DeepSea
      table_name = "deep_seas"
    else
      table_name = self.class.to_s.downcase + "s"
    end

    sql = <<-SQL
      INSERT INTO #{table_name} (name, url, image, price, location, time, start_time, end_time) VALUES (?,?, ?, ?, ?, ?, ?, ?)
    SQL

    DB[:connection].execute(sql, self.name, self.url, self.image, self.price, self.location, self.time, self.start_time, self.end_time)

    @id = DB[:connection].execute("SELECT last_insert_rowid() FROM #{table_name}")[0][0]

    self.months.each do |month, value|
      month_sql = "UPDATE #{table_name} SET (#{month.to_s}) = ? WHERE id = ?"
      DB[:connection].execute(month_sql, value ? 1 : 0, @id)
    end
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
       end_time TEXT,
       january INTEGER,
       february INTEGER,
       march INTEGER,
       april INTEGER,
       may INTEGER,
       june INTEGER,
       july INTEGER,
       august INTEGER,
       september INTEGER,
       october INTEGER,
       november INTEGER,
       december INTEGER
      )
    SQL

    DB[:connection].execute(sql)
  end
end