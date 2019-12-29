class Creature
  attr_accessor :name, :url, :image, :price, :location, :time, :months, :start_time, :end_time

  def self.create(creature_hash)
    creature = self.new(creature_hash)
    creature.save
  end

  def save
    self.class.all << self
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
end