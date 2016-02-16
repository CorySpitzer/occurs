def occurs?(list, element)
  list.each do |entry|
    if entry == element
      return true
    end
  end
  false
end
