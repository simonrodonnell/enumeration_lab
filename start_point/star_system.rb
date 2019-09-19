class StarSystem
  attr_reader :name, :planets

  def initialize(name, planets)
    @name = name
    @planets = planets
  end

  def planet_names
    planet_names_array = @planets.map { |planet| planet.name }
    return planet_names_array
  end

  
end
