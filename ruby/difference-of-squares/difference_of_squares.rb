class Squares
  def initialize(input)
    @input = input
  end

  def square_of_sum
    ((1..@input).inject(0) do |sum,i|
      sum + i
    end) ** 2
  end

  def sum_of_squares
    (1..@input).to_a.inject(0) do |sum,i|
      sum + i ** 2
    end
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
