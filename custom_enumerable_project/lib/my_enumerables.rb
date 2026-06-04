module Enumerable
  # Your code goes here
  def my_each_with_index
    return to_enum(:my_each_with_index) unless block_given?

    index = 0
    self.my_each do |element|
      yield(element, index)
      index += 1
    end
    self
  end

  def my_select
    return to_enum(:my_select) unless block_given?

    result = []
    self.my_each do |element|
      result << element if yield(element)
    end
    result
  end

  def my_all?
    if block_given?
      self.my_each { |element| return false unless yield(element) }
    else
      self.my_each { |element| return false unless element }
    end
    true
  end

  def my_any?
    if block_given?
      self.my_each { |element| return true if yield(element) }
    else
      self.my_each { |element| return true if element }
    end
    false
  end

  def my_none?
    if block_given?
      self.my_each { |element| return false if yield(element) }
    else
      self.my_each { |element| return false if element }
    end
    true
  end

  def my_count(argument = nil)
    count = 0
    if block_given?
      self.my_each { |element| count += 1 if yield(element) }
    elsif !argument.nil?
      self.my_each { |element| count += 1 if element == argument }
    else
      self.my_each { |element| count += 1 }
    end
    count
  end

  def my_map
    return to_enum(:my_map) unless block_given?

    result = []
    self.my_each do |element|
      result << yield(element)
    end
    result
  end

  def my_inject(initial_value = nil)
    accumulator = initial_value
    
    self.my_each do |element|
      if accumulator.nil?
        accumulator = element
      else
        accumulator = yield(accumulator, element)
      end
    end
    accumulator
  end
end

# You will first have to define my_each
# on the Array class. Methods defined in
# your enumerable module will have access
# to this method
class Array
  # Define my_each here
  def my_each
    return to_enum(:my_each) unless block_given?

    i = 0
    while i < self.length
      yield(self[i])
      i += 1
    end
    self
  end
end
