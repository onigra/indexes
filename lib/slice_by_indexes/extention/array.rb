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
      # indexが最後だったら
      if i == (indexes.size - 1)

        # itemの位置から末尾までを取得
        result << self[item..(self.size - 1)]
      else

        # [1, 1]みたいに取得したい値(match_condition)の値が続いている場合
        # 取得したindexが連番になっているはず
        if indexes[i + 1] - item == 1
          result << [self[item]]
        else

          # itemの位置から次のindex - 1までを取得
          result << self[item..(indexes[i + 1] - 1)]
        end
      end
    end

    result
  end
end
