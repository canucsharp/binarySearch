require File.expand_path("./lib/binary_sort.rb",__dir__)

ar = BinarySort.new(10)

ar.insert(4)
ar.insert(7)
ar.insert(8)
ar.insert(15)
ar.insert(13)
ar.insert(19)

is_there = ar.search_key(ar, 7)

puts "Tree: #{ar}"
puts "Search Results: #{is_there}"

new_array = ar.remove_key(ar, 8)

puts "New tree: #{new_array}"
