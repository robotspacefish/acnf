class Creature
  attr_accessor :name, :url, :image, :price, :location, :time, :months

  def self.create(creature_hash)
    creature = self.new(creature_hash)
    creature.save
  end

  def save
    self.class.all << self
  end

  def time=(time)
    # TODO time instance
  end

  def year=(months)
    # TODO year instance
  end
end