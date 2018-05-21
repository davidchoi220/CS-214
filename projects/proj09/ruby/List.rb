# List.rb implements a linked list structure in Ruby.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by:
# Date:
#######################################################

require 'test/unit/assertions'
include Test::Unit::Assertions

class List

  def initialize
    @first, @last = nil
    @length = 0
  end


   # create reader method for length

   # Replace this line with a statement to define a 'length' reader method


   # Am I empty?
   # Return: length == 0
  def empty?
    @length == 0
  end
  
   # append a value to me
   # Receive: value, the item to be appended
   # Postcondition: my last item is value and
   #                 my length is one more than it was
  def append(value)
    newNode = Node.new(value, nil)

    if empty?
      @first = newNode
    else
      @last.next = newNode      
    end

    @last = newNode
    @length += 1
    self
  end


  # print my items
  # Postcondition: my items have been displayed to the screen
  def print
    temp = @first
    while !temp.nil?
      printf " #{temp.value}"
      temp = temp.next
    end  
  end


  # find my maximum item
  # Return: my maximum item
  def max
    temp = @first
    maxValue = -999999
    while !temp.nil?
      if temp.value > maxValue
        maxValue = temp.value
      end
      temp = temp.next
    end
    return maxValue
  end
      
  # find the position of an integer
  # return: the positon of aValue
  def search(aValue)
    temp = @first
    count = 0
    while !temp.nil?
      if temp.value == aValue
        return count
      end
      count = count + 1
      temp = temp.next
    end
    return -1
  end

  class Node
      def initialize(item, link)
         @value = item
         @next = link
      end

      attr_reader :value
      attr_accessor :next
  end

end

