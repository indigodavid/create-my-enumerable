# frozen_string_literal: true

# lib/my_enumerable.rb

# Module to process iterable functions for MyList class
module MyEnumerable
  def all?
    # all method
    condition = true
    index = 0
    while index < @list.length
      condition &&= yield @list[index]
      index += 1
    end
    condition
  end

  def any?
    # any method
    condition = false
    index = 0
    while index < @list.length
      condition ||= yield @list[index]
      break if condition

      index += 1
    end
    condition
  end

  def filter
    # filter method
    filtered_array = []
    index = 0
    while index < @list.length
      filtered_array << @list[index] if yield @list[index]
      index += 1
    end
    filtered_array
  end
end
