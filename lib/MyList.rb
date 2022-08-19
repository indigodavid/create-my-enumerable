require "./MyEnumerable"

class MyList
  include MyEnumerable
  @list = []
  
  def initialize(*elements)
    @list = elements
  end
end
