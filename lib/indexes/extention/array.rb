module Enumerable

  def indexes(item = nil)
    if block_given?
      self.each_with_index.map { |obj, index| index if yield(obj) }.reject(&:nil?)
    else
      self.each_with_index.map { |obj, index| index if obj == item }.reject(&:nil?)
    end
  end

  def slice_indexes(item = nil)
    result = []
    tmp = nil

    if block_given?
      tmp = self.indexes { |i| yield(i) }
    else
      tmp = self.indexes item
    end

    tmp.each_with_index do |obj, index|
      # indexが最後だったら
      if index == (tmp.size - 1)

        # objの位置から末尾までを取得
        result << self[obj..(self.size - 1)]
      else

        # [1, 1]みたいに取得したい値(item)の値が続いている場合
        # 取得したindexが連番になっているはず
        if tmp[index + 1] - obj == 1
          result << [self[obj]]
        else

          # objの位置から次のindex - 1までを取得
          result << self[obj..(tmp[index + 1] - 1)]
        end
      end
    end

    result
  end
end
