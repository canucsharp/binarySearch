class Node
  attr_reader :key, :left, :right

  def initialize(key)
    @key = key
    @left = nil
    @right = nil
  end

  def insert(new_key)
    if new_key <= @key
      if @left.nil?
        @left = Node.new(new_key)
      else
        @left.insert(new_key)
      end
    elsif new_key > @key
      if @right.nil?
        @right = Node.new(new_key)
      else
        @right.insert(new_key)
      end
    end
  end

  def search_key(key)
    if key == @key
      key
    else
      if key < @key && @left
        @left.search_key(key)
      elsif key > @key && @right
        @right.search_key(key)
      end
    end
  end

  def search_parent(key)
    if @left && @right
      if @left.key == key || @right.key == key
        self
      else
        if left_search = @left.search_parent(key)
          left_search
        elsif right_search = @right.search_parent(key)
          right_search
        end
      end
    end
  end

  def move_node(node, parent)
    unless node.key.nil?
      if node.key <= parent.key
        parent.left = node.left.key
      elsif node.key > parent.key
        parent.right = node.right.key
      end
    end
  end

  def re_insert_node(node)
    if node.key <= @key
      @left.re_insert_node(node)
    elsif new_key > @key
      @right.re_insert_node(node)
    end
  end

  def remove_node(key)
    parent = search_parent(key)

    if key == parent.left.key
      move_node(parent.left.key, parent)
    elsif key == parent.right.key
      move_node(parent.right.key, parent)
    end
  end
end
