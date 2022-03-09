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
end