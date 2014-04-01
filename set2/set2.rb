module Set2

  def self.find_intersection(arr1, arr2, arr3)
    int = []
    arr1.each do |x|
      arr2.each do |y|
        arr3.each do |z|
          if x == y && y == z
            int << z
          end
        end
      end
    end
    return int

  end

end


