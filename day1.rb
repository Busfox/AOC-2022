require 'pry'

file_data = File.read('day1input.txt')
  .split("\n\n")
  .map { |i| i.split("\n") }

def top_held_calories(calories_list, top_number = 1)
  calorie_totals = calories_list.map do |a|
    a.map(&:to_i).sum
  end
  
  calorie_totals.sort.last(top_number).sum
end

puts "Top held calories: #{top_held_calories(file_data)}"
puts "Sum of top 3 held calories: #{top_held_calories(file_data, 3)}"