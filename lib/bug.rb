class Bug < Creature
  @@all = []

  def initialize(creature_hash)
    creature_hash.each { |k, v| self.send("#{k}=", v) }
  end

  def self.all
    @@all
  end
end