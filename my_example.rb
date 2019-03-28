require File.expand_path('./lib/binary_tree.rb', __dir__)
require File.expand_path('./lib/node.rb', __dir__)

node = Node.new(10)
tree = BinaryTree.new(node)

tree.insert(4)
tree.insert(7)
tree.insert(8)
tree.insert(15)
tree.insert(13)
tree.insert(19)

is_there = tree.search_key(7)
is_there1 = tree.search_key(20)
parent = tree.search_parent(19)
deleted = tree.remove_node(7)

puts "Search Results: #{is_there}"
puts "Search Results: #{is_there1}"
puts "Search Results: #{parent.key}"
puts "Deleted: #{deleted.inspect}"
puts "New Tree: #{tree.inspect}"
