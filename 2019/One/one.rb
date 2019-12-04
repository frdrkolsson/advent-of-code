class One
  def self.fuel_for(mass)
    (mass / 3).to_i - 2
  end

  def self.actual_fuel_for(mass)
    required_fuel = []
    fuel_to_calculate = mass

    while fuel_to_calculate > 0 do
      fuel_to_calculate = fuel_for(fuel_to_calculate)

      break if fuel_to_calculate <= 0

      required_fuel.push(fuel_to_calculate)
    end


    required_fuel.sum
  end

  def self.calculate_total_fuel
    File.foreach('input.txt').map { |line| fuel_for(line.to_i) }
  end

  def self.calculate_actual_total_fuel
    File.foreach('input.txt').map { |line| actual_fuel_for(line.to_i) }
  end

  puts 'Part One--------------------------------------------------------'
  puts "Fuel required: #{calculate_total_fuel.sum}"
  puts 'Part Two--------------------------------------------------------'
  puts "Actual fuel required: #{calculate_actual_total_fuel.sum}"
end
