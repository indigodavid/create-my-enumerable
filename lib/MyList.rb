require_relative "MyEnumerable"
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
