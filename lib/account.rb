class Account
  attr_reader :balance

  DEFAULT_BALANCE = 0

  def initialize
    @balance = DEFAULT_BALANCE
  end

  def transfer_funds(ammount)
    @balance += ammount
  end

end
