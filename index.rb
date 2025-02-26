# Définition des valeurs de couleur
COLOR_CODES = {
  "black" => 0,
  "brown" => 1,
  "red" => 2,
  "orange" => 3,
  "yellow" => 4,
  "green" => 5,
  "blue" => 6
}

def resistor_value(colors)
  # Filtrer uniquement les couleurs valides
  digits = colors.map { |color| COLOR_CODES[color] }.compact

  # Prendre les deux premiers chiffres et les concaténer
  value = digits.first(2).join
  value.empty? ? "Invalid input" : value
end

puts "Enter resistor colors separated by space:"
input_colors = gets.chomp.split
puts "Resistor value: #{resistor_value(input_colors)}"





