require_relative './node'
# require 'pry'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    if head.nil?
      return nil 
    end
    
    if n < 1
      return nil
    end

    length = 1
    curr_node = head

    while curr_node.next_node
      length += 1
      curr_node = curr_node.next_node
    end

    if n > length
      nil
    elsif n == 1
      curr_node.value
    else  
      search(length, n) 
    end
    
  end

  def search(length, n) 

    search_index = 1
    curr_node = self.head

    while search_index < ((length + 1) - n)    
        search_index += 1
        curr_node = curr_node.next_node
    end

    curr_node.value
  end  

  # def append(node)
  #   if head.nil?
  #       self.head = node
  #       return
  #   end

  #   last_node = head

  #   while last_node.next_node
  #     last_node = last_node.next_node
  #   end

  #   last_node.next_node = node
  # end

end

# binding.pry
# 0