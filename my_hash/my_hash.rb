class MyHash
  def initialize
      @hash = Array.new(64){[]}
  end

  def find_index(key)
    index = key.hash%64

  end

  def []=(key, value)
    found = false
    if @hash[find_index(key)] == []
       @hash[find_index(key)] <<[key, value]
    else
      @hash[find_index(key)].each do |k|
        if k[0] == key
          found = true
          k[1] = value
        end
      end
    end
    if found == false
      @hash[find_index(key)] << [key,value]
    end

  end

  def [](key)
    if @hash[find_index(key)] == []
      return nil
    elsif @hash[find_index(key)].find {|key_val| key_val[0] == key } == nil
      return nil
    else
        new = @hash[find_index(key)].find {|key_val| key_val[0] == key}
          return new[1]
    end

  end



end
