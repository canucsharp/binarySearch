class BinarySort
  def initialize(key)
    @key = key
    @left = nil
    @right = nil
  end

  def insert(new_key)
    if new_key <= @key
      if @left == nil
        @left = BinarySort.new(new_key)
      else
        @left.insert(new_key)
      end
    elsif new_key > @key
      if @right == nil
        @right = BinarySort.new(new_key)
      else
        @right.insert(new_key)
      end
    end
  end

  def search_key(array, key)
    (array.length-1).times do |i|
      if key == array[i]
        return key
      else
        return "No #{key} on the array"
      end
    end
  end

  def remove_key(array, key)
    (array.size-1).times do |i|
      if key == array[i]
        if array[i].left
          tmpL = array[i].left
          tmpR = array[i].right
        end
        array[i].destroy
        array[i] = tmpL
        array[i].right = tmpR
      else
        puts "No #{key} on the array"
      end
    end
  end
end
