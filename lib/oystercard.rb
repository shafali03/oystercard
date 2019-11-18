class Oystercard

  attr_reader :balance

  MAX_BALANCE = 90
  MIN_FARE = 1

  def initialize
    @balance = 0
    @in_journey = false
  end

  def top_up(amount)
    raise "Exceeded maximum limit of £#{MAX_BALANCE}" if (balance + amount) > MAX_BALANCE

    @balance += amount
  end

  def deduct(amount)
    raise "Insufficient balance, please top up" if (balance - amount) < 0

    @balance -= amount
  end

  def in_journey?
    @in_journey
  end

  def touch_in
    raise "Card already touched in" if in_journey?

    raise "Insufficient balance, cannot touch in: please top up" unless balance >= MIN_FARE

    @in_journey = true
  end

  def touch_out
    raise "Card not touched in" unless in_journey?

    @in_journey = false
  end

end
