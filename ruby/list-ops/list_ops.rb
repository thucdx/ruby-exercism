class ListOps
  def self.arrays(array)
    array.length
  end

  def self.reverser(array)
    res = []
    len = array.length
    res <<= array[len -= 1] while len > 0
    res
  end

  def self.concatter(array1, array2)
    array2.each do |element|
      array1 << element
    end
    array1
  end

  def self.mapper(array)
    res = []
    array.each do |element|
      res << 1 + element
    end
    res
  end

  def self.sum_reducer(array)
    sum = 0
    array.length.times do |i|
      sum += array[i]
    end
    sum
  end

  def self.factorial_reducer(array)
    res = 1
    array.each do |element|
      res *= element
    end
    res
  end

  def self.filterer(array)
    res = []
    array.each do |element|
      res << element if element % 2 == 1
    end
    res 
  end

  VERSION = 1
end
