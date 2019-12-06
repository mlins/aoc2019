calc_fuel = ->(m) { m/3-2 }

total_fuel = File.readlines('01b.txt').map do |m|
  fuel      = calc_fuel.(Integer(m))
  total     = 0

  loop do
    total += fuel
    fuel = calc_fuel.(fuel)
    break if fuel <= 0
  end

  total
end.sum

puts total_fuel
