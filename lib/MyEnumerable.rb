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
  
end
