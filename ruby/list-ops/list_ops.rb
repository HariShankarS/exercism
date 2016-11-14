class ListOps
  
  def self.arrays(array)
    count = 0
    for i in array
      count += 1
    end
    count
  end

  def self.reverser(array)
    reversed_array = []
    i = arrays(array) - 1
    until i < 0 do 
      reversed_array << array[i]
      i -= 1
    end
    reversed_array
  end

  def self.concatter(array1,array2)
    array1 + array2
  end

  def self.mapper(array,&block)
    result = []
    for i in array
      result << yield(i) 
    end
    result
  end

  def self.filterer(array, &block)
    result = []
    for i in array
      result << i if yield(i) 
    end
    result
  end

  def self.sum_reducer(array)
    sum = 0;
    for i in array 
      sum += i
    end
    sum
  end

  def self.factorial_reducer(array)
    factorial = 1
    for i in array 
      factorial *= i
    end
    factorial
  end 

end
