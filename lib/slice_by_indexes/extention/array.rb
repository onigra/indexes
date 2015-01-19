class Array

  def indexes(match_condition = nil)
    if block_given?
      self.each_with_index.map { |item, i| i if yield(item) }.reject(&:nil?)
    else
      self.each_with_index.map { |item, i| i if item == match_condition }.reject(&:nil?)
    end
  end

  def slice_by_indexes(match_condition = nil)
    result = []

    indexes = if block_given?
      self.indexes { |i| yield(i) }
    else
      self.indexes match_condition
    end

    indexes.each_with_index do |item, i|
      #
      # indexが最後だったら、現在の位置から末尾までを取得
      #
      if i == (indexes.size - 1)
        result << self[item..(self.size - 1)]
      else
        #
        # [1, 1]みたいに取得したい値(match_condition)の値が続いている場合
        # 取得したindexが連番になっているはず
        #
        # その場合は現在の値を取得
        # そうでない場合、現在の位置から次の一致条件の値までを取得
        #
        if indexes[i + 1] - item == 1
          result << [self[item]]
        else
          result << self[item..(indexes[i + 1] - 1)]
        end
      end
    end

    result
  end
end
