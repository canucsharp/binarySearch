class BinaryTree
  def initialize(node)
    @root = node
  end

  def insert(new_key)
    if @root
      @root.insert(new_key)
    else
      @root = Node.new(new_key)
    end
  end

  def search_key(key)
    if @root
      @root.search_key(key)
    else
      "No #{key} on the tree"
    end
  end

  def search_parent(key)
    @root.search_parent(key)
  end

  def remove_node(key)
    @root.remove_node(key)
  end
end
