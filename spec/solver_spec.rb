require_relative '../solver'

describe Solver do
  before :all do
    @solver = Solver.new
  end

  describe 'calling factorial method' do
    it 'should be able to return the factorial of a number' do
      expect(@solver.factorial(5)).to eq(120)
      expect(@solver.factorial(3)).to eq(6)
      expect(@solver.factorial(1)).to eq(1)
      expect(@solver.factorial(0)).to eq(1)
    end

    it 'should be able to raise an exception when a negative value is passed as a parameter' do
      expect {@solver.factorial(-1)}.to raise_error("Can't calculate the factorial of a negative number")
    end
    
  end

  describe 'calling reverse method' do
    it 'should be able to return the reverse of a string' do
      expect(@solver.reverse('hello')).to eq('olleh')
      expect(@solver.reverse('eardrummers')).to eq('sremmurdrae')
    end
    
  end

  describe 'calling fizzbuzz method' do
    it 'should be able to return fizzbuzz if the number is divisible by 3 and 5' do
      expect(@solver.fizzbuzz(15)).to eq('fizzbuzz')
      expect(@solver.fizzbuzz(60)).to eq('fizzbuzz')
    end
    it 'should be able to return fizz if the number is divisible by 3 only' do
      expect(@solver.fizzbuzz(9)).to eq('fizz')
      expect(@solver.fizzbuzz(18)).to eq('fizz')
    end
    it 'should be able to return buzz if the number is divisible by 5 only' do
      expect(@solver.fizzbuzz(25)).to eq('buzz')
      expect(@solver.fizzbuzz(100)).to eq('buzz')
    end
    it 'should be able to return the number if the number is neither divisible by 5 nor 3' do
      expect(@solver.fizzbuzz(7)).to eq(7)
      expect(@solver.fizzbuzz(98)).to eq(98)
    end
    
  end

end