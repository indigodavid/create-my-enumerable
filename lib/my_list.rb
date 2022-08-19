# frozen_string_literal: true

# lib/my_list.rb

require_relative 'MyEnumerable'

# Class to create a custom Enumerable object
class MyList
  include MyEnumerable
  @list = []

  def initialize(*elements)
    @list = elements
  end

  def each
    @list.each yield
  end
end
