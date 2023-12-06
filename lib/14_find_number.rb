# frozen_string_literal: true

# class for computer to find random number
class FindNumber
  attr_reader :min, :max, :answer, :guess

  def initialize(min, max, answer = RandomNumber.new(min, max), guess = nil)
    @min = min
    @max = max
    # The RandomNumber class will have an instance variable '@value'
    @answer = answer.value
    @guess = guess
  end

  def make_guess(min = @min, max = @max)
    ((min + max)/2).floor
  end

  def game_over?
    return true if @guess == @answer
  end

  def update_range
    case @guess <=> @answer
    when -1
      @min = @guess + 1
    when 0
      return
    when 1
      @max = @guess - 1
    end
  end
end
