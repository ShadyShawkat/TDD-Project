class Solver
  def factorial(num)
    return 1 if [0, 1].include?(num)
    raise Exception, "Can't calculate the factorial of a negative number" if num.negative?

    num * factorial(num - 1)
  end

  def reverse(str)
    str.reverse
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num
    end
  end
end
