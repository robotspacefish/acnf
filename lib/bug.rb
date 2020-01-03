class Bug < Creature
  def initialize(creature_hash)
    creature_hash.each { |k, v| self.send("#{k}=", v) }
  end
end