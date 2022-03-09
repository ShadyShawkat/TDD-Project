require_relative '../solver'

describe Solver do
  before :all do
    @solver = Solver.new
  end

  describe 'calling refactor method' do
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

end