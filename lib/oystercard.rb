
class Oystercard
  attr_reader :balance, :in_use
  MAXIMUM_CARD_LIMIT = 90

  def initialize
    @balance = 0
    @in_use = false
  end

  def top_up(amount)
    raise 'Maximum card limit exceeded' if @balance + amount > MAXIMUM_CARD_LIMIT
    @balance += amount
  end

  def deduct(amount)
    @balance -= amount
  end

  def in_journey?
    @in_use
  end

  def touch_in
    @in_use = true
  end

  def touch_out
    @in_use
  end
  
end
