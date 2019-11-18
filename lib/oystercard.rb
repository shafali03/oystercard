class Oystercard

  attr_reader :balance

  DEFAULT_LIMIT = 90

  def initialize
    @balance = 0
  end

  def top_up(amount)    
    raise "Exceeded maximum limit of £#{DEFAULT_LIMIT}" if (@balance + amount) > DEFAULT_LIMIT

    @balance += amount
  end

end
