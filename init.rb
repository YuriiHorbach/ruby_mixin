require_relative 'classes/todolist'

list = LIL::ToDoList.new(['dishes', 'nap', 'laundry', 'vacuum'])

puts "Count: " + list.count.to_s

puts "First: " + list.first.to_s

puts "Last" + list.last.to_s

puts "Longest;: " + list.find{ |item| (item.length > 6).to_s }

print "Capitalized: "
print list.map { |i| i.capitalize }

puts
list << 20
puts '=' * 10
list.each { |i| puts i }
puts list.map { |i| i.is_a?(String) ? i.capitalize : i }
