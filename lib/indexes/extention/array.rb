class Array
  def indexes(item)
    self.each_with_index.map { |obj, index| index if obj == item }.reject(&:nil?)
  end
end
