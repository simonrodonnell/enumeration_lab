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

  def get_planet_by_name(planet_name)
    @planets.find { |planet| planet.name.include?(planet_name) }
  end

  def get_largest_planet
    return @planets.max { |planet_a, planet_b| planet_a.diameter <=> planet_b.diameter }
  end

  def get_smallest_planet
    return @planets.min { |planet_a, planet_b| planet_a.diameter <=> planet_b.diameter }
  end

  def get_planets_with_no_moons
    planets_with_no_moons_array = @planets.find_all { |planet| planet.number_of_moons == 0 }
    return planets_with_no_moons_array
  end

  def get_planets_with_more_moons(amount)
    planets_with_more_moons_array = @planets.find_all { |planet| planet.number_of_moons > amount }
    planet_names = planets_with_more_moons_array.map {|planet| planet.name}
    return planet_names
  end

  def get_number_of_planets_closer_than(amount)
    return @planets.find_all { |planet| planet.distance_from_sun < amount}.length
  end

  def get_total_number_of_moons
    return @planets.reduce(0) { |sum_of_planet_moons, planet| sum_of_planet_moons + planet.number_of_moons }
  end

  def get_planet_names_sorted_by_increasing_distance_from_sun
    planets_sorted_array = @planets.sort { |planet_a, planet_b| planet_a.distance_from_sun <=> planet_b.distance_from_sun}
    return planet_names = planets_sorted_array.map { |planet| planet.name }
  end

  def get_planet_names_sorted_by_size_decreasing
    planets_sorted_array = @planets.sort { |planet_a, planet_b| planet_b.diameter <=> planet_a.diameter}
    return planet_names = planets_sorted_array.map { |planet| planet.name }
  end

end
