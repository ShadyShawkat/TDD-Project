class Solver
  def factorial(num)
    if(num == 0 || num == 1)
      return 1
    end
    if(num < 0)
      raise Exception.new "Can't calculate the factorial of a negative number"
    end
    num * factorial(num - 1)
  end

  def reverse(str)
    str.reverse
  end

  def fizzbuzz(num)
    if(num % 3 == 0 && num % 5 == 0)
      'fizzbuzz'
    elsif num % 3 ==0
      'fizz'
    elsif num % 5 ==0
      'buzz'
    else
      num
    end
  end
end